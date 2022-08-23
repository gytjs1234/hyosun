package net.hyosun.love.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import net.hyosun.love.config.QualifierConfig;
import net.hyosun.love.model.WeatherVO;
import net.hyosun.love.service.WeatherService;

@Service
public class WeatherServiceImpl implements WeatherService{

	@Override
	public List<WeatherVO> getWeater(String mapX, String mapY) throws IOException {
		
		
		String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"; /*URL*/
		
		
		

		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat timeForm = new SimpleDateFormat("HH00");
		
		url+=("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+QualifierConfig.KEY_1); /*Service Key*/
		url+=("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
		url+=("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
		url+=("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(dateForm.format(date), "UTF-8")); /*‘21년 6월 28일발표*/
		url+=("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode("0500", "UTF-8")); /*05시 발표*/
		url+=("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode(mapX, "UTF-8")); /*예보지점의 X 좌표값*/
		url+=("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode(mapY, "UTF-8")); /*예보지점의 Y 좌표값*/
		 URL realUrl = new URL(url);
	        HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        String retString = "";
	        String line;
	        while ((line = rd.readLine()) != null) {
	        	retString+=line;
	        }
	        rd.close();
	        conn.disconnect();
	        
	        
	        
	        
	        
	        //xml json으로 형변환
	        JSONObject json = XML.toJSONObject(retString);
	        String jsonStr = json.toString(4);
	        
	       
	        // JSONObject형식으로 지정
	        JSONObject jObject = new JSONObject(jsonStr);
	        
	        //response 안으로
	        JSONObject response = jObject.getJSONObject("response");
	        
	        // body 안으로
	        JSONObject body = response.getJSONObject("body");
	        
	        //items 안으로
	        JSONObject items = body.getJSONObject("items");
	        
	        //item은 배열로 생성
	        JSONArray item = items.getJSONArray("item");
	      
	        //json 배열을 List형으로 변형해서 VO에 저장
	        Gson gson = new Gson();
	        List<WeatherVO> list = gson.fromJson(item.toString(), new TypeToken<List<WeatherVO>>(){}.getType());
	        
	        //값 지정해서 출력 성공!
	        
	        
	        return list;
		}
}
