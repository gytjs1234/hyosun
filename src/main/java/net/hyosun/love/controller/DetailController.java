package net.hyosun.love.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.hyosun.love.model.AroundVO;
import net.hyosun.love.model.CommonDetailVO;
import net.hyosun.love.model.FoodVO;
import net.hyosun.love.model.LodgmentVO;
import net.hyosun.love.model.TourListVO;
import net.hyosun.love.service.AroundService;
import net.hyosun.love.service.DetailService;

@Controller
@RequestMapping(value = "/detail")
public class DetailController {
	@Autowired
	public DetailService detailService;

	@Autowired
	private AroundService aroundService;

	@RequestMapping(value = "/detail/{contentid}")
	public String tour_detail(@PathVariable("contentid") String contentid, Model model) throws IOException {

		TourListVO tourDetailVO = detailService.getTourDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy,
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundFoodList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "39");
		List<AroundVO> AroundLodgeList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "32");

		model.addAttribute("TOURDETAIL", tourDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDFOOD", AroundFoodList);
		model.addAttribute("AROUNDLODGE", AroundLodgeList);
		return "/detail/detail";
	}

	@RequestMapping(value = "/detail-restaurant/{contentid}")
	public String detail_restaurant(@PathVariable("contentid") String contentid, Model model) throws IOException {

		FoodVO foodDetailVO = detailService.getFoodDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy,
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundTourList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "12");
		List<AroundVO> AroundLodgeList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "32");

		model.addAttribute("FOODDETAIL", foodDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDTOUR", AroundTourList);
		model.addAttribute("AROUNDLODGE", AroundLodgeList);
		return "/detail/detail-restaurant";
	}

	@RequestMapping(value = "/detail-lodge/{contentid}")
	public String detail_lodge(@PathVariable("contentid") String contentid, Model model) throws IOException {

		LodgmentVO lodgeDetailVO = detailService.getLodgmentDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy,
				CommonDetailVO.contenttypeid);
		List<AroundVO> AroundTourList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "12");
		List<AroundVO> AroundFoodList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, "39");

		model.addAttribute("LODGEDETAIL", lodgeDetailVO);
		model.addAttribute("COMMONDETAIL", CommonDetailVO);
		model.addAttribute("AROUND", AroundList);
		model.addAttribute("AROUNDTOUR", AroundTourList);
		model.addAttribute("AROUNDFOOD", AroundFoodList);
		return "/detail/detail-lodge";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {

		return "/detail/detail";

	}

	@RequestMapping(value = "/detail-restaurant", method = RequestMethod.GET)
	public String detail_restautant() {

		return "/detail/detail-restaurant";

	}

	@RequestMapping(value = "/detail-lodge", method = RequestMethod.GET)
	public String detail_lodge() {

		return "/detail/detail-lodge";

	}
}
