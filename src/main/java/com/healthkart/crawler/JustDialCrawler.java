package com.healthkart.crawler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/**
 * 
 * This is an individual script which can be run to upload the data to db.
 * 
 * Crawler works in two steps: 1. It crawls the url to individual pages to the Doctor's details. 2. Crawler visit
 * individual pages and extracts the data.
 * 
 * @author HP
 * 
 */
class JustDialCrawler {

	private final String USER_AGENT = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.21 (KHTML, like Gecko) Chrome/19.0.1042.0 Safari/535.21";
	private final String PAGE_NOS_TAG = "<PAGE_NOS>";
	private final String URL = "http://www.justdial.com/Delhi/General-Physician-Doctors/page-" + PAGE_NOS_TAG;
	private final int MAX_PAGE_NOS = 20;
	private final String DELIMITER = "!";

	private final String MAIN_PAGE_STARTING_DIV = "<section class=\"rslwrp\">";
	private final String MAIN_PAGE_CONTENT_DIV = "<aside class=\"compdt\">";
	private final String MAIN_PAGE_START_DIV = "<span class=\"jcn \">";
	private final String MAIN_PAGE_END_DIV = "</span>";
	private final String URL_START_STRING = "href=\"";
	private final String URL_END_STRING = "\" title=\"";

	private final String INDI_PAGE_NAME_CONTENT_DIV = "<span class=\"item\">";
	private final String INDI_PAGE_NAME_STARTING_STRING = "span class=\"fn\">";
	private final String INDI_PAGE_NAME_END_STRING = "</span>";
	private final String INDI_PAGE_NOS_CONTENT_DIV = "<a class=\"tel\"";
	private final String INDI_PAGE_NOS_STARTING_STRING = "<b>+";
	private final String INDI_PAGE_NOS_END_STRING = "</b></a>";
	private final String INDI_PAGE_ADDRESS_CONTENT_DIV = "<span class=\"jaddt\">";
	private final String INDI_PAGE_ADDRESS_STARTING_STRING = "<span class=\"jadlt\">";
	private final String INDI_PAGE_ADDRESS_END_STRING = "</span>";

	public String getUrlsFromMainPages() {
		String urlStrings = "";
		for (int pageNos = 1; pageNos <= MAX_PAGE_NOS; pageNos++) {
			String text = getUrlPage(URL.replace(PAGE_NOS_TAG, String.valueOf(pageNos)));
			text = text.substring(text.indexOf(MAIN_PAGE_STARTING_DIV));
			String filteredString = fetchDataContinuous(text, MAIN_PAGE_CONTENT_DIV, MAIN_PAGE_START_DIV,
					MAIN_PAGE_END_DIV);
			urlStrings = urlStrings + DELIMITER
					+ fetchDataContinuous(filteredString, DELIMITER, URL_START_STRING, URL_END_STRING);
		}
		return urlStrings;
	}

	public List<String> processIndividualPages(String urlStrings) {

		List<String> data = new ArrayList<String>();
		System.out.println("inside process individual pages " + urlStrings);
		for (String url : urlStrings.split(DELIMITER)) {
			if (!url.equals("")) {
				String pageString = getUrlPage(url);
				String name = fetchDataContinuous(pageString, INDI_PAGE_NAME_CONTENT_DIV,
						INDI_PAGE_NAME_STARTING_STRING, INDI_PAGE_NAME_END_STRING).split(DELIMITER)[1];
				String[] d = fetchDataContinuous(pageString, INDI_PAGE_NOS_CONTENT_DIV,
						INDI_PAGE_NOS_STARTING_STRING, INDI_PAGE_NOS_END_STRING).split(DELIMITER);
				String phoneNos = "-";
				if (d.length >2) {
					phoneNos = d[1];
				}
				String address = fetchDataContinuous(pageString, INDI_PAGE_ADDRESS_CONTENT_DIV,
						INDI_PAGE_ADDRESS_STARTING_STRING, INDI_PAGE_ADDRESS_END_STRING).split(DELIMITER)[1];
				data.add(name + DELIMITER + phoneNos + DELIMITER + address);
			}
		}
		return data;
	}

	private String getUrlPage(String url) {
		Response response;
		try {
			response = Jsoup.connect(url).userAgent(USER_AGENT).timeout(100000).ignoreHttpErrors(true).execute();
			int statusCode = response.statusCode();
			if (statusCode == 200) {
				Document doc = response.parse();
				String text = doc.select("body").toString();
				return text;
			} else {
				System.out.println("received error code : " + statusCode);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	private String fetchDataContinuous(String textToParse, String contentDiv, String startString, String endString) {
		String data = new String();
		String arr[] = textToParse.split(contentDiv);
		for (int i = 0; i < arr.length; i++) {
			String str = arr[i];
			int start = str.indexOf(startString);
			if (start != -1) {
				int end = str.substring(start).indexOf(endString);
				if (end != -1) {
					end = end + start;
					int end1 = (end >= str.length()) ? str.length() : (end);
					String currentString = str.substring(start + startString.length(), end1);
					data = data + DELIMITER + currentString;
				}
			}
		}
		return data;
	}

	private void insertIntoDb(List<String> datas) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager
					.getConnection("jdbc:mysql://127.0.0.1:3306/healthkart?zeroDateTimeBehavior=convertToNull&user=root&password=");

			for (String data : datas) {
				String[] values = data.split(DELIMITER);
				PreparedStatement ps2 = connection
						.prepareStatement("insert INTO medical_centre (name,phone_nos,address) values (?,?,?)");
				ps2.setString(1, values[0]);
				ps2.setString(2, values[1]);
				ps2.setString(3, values[2]);
				ps2.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void main(String args[]) throws IOException {
		JustDialCrawler obj = new JustDialCrawler();
		obj.insertIntoDb(obj.processIndividualPages(obj.getUrlsFromMainPages()));

	}

}