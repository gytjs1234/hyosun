package net.hyosun.love.service;

import java.io.IOException;
import java.util.List;

import net.hyosun.love.model.WeatherVO;

public interface WeatherService {
	
	public List<WeatherVO> getWeater(String mapX, String mapY) throws IOException;

}
