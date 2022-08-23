package net.hyosun.love.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test {
	public static void main(String[] args) throws IOException, ParseException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"); /*URL*/

		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat timeForm = new SimpleDateFormat("HH00");

		Date test1 = timeForm.parse("0200");
		String test2 = timeForm.format(date);

		System.out.println(test2);
		

		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
				+ "=JLSBg4YmMouEgiscnceKylZ5QHSLw%2FHSLxp7HiYUXbR8yy96gbh%2F2S71P%2FAwdzRmovhWsgnx1olivzhxaz40sA%3D%3D"); /*Service Key*/
		urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
		urlBuilder.append("&" + URLEncoder.encode("dataType", "UTF-8") + "="
				+ URLEncoder.encode("XML", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
		urlBuilder.append("&" + URLEncoder.encode("base_date", "UTF-8") + "="
				+ URLEncoder.encode(dateForm.format(date), "UTF-8")); /*‘21년 6월 28일발표*/
		urlBuilder.append("&" + URLEncoder.encode("base_time", "UTF-8") + "="
				+ URLEncoder.encode(timeForm.format(date), "UTF-8")); /*05시 발표*/
		urlBuilder.append(
				"&" + URLEncoder.encode("nx", "UTF-8") + "=" + URLEncoder.encode("55", "UTF-8")); /*예보지점의 X 좌표값*/
		urlBuilder.append(
				"&" + URLEncoder.encode("ny", "UTF-8") + "=" + URLEncoder.encode("127", "UTF-8")); /*예보지점의 Y 좌표값*/
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
	System.out.println(sb.toString());
	}
}
