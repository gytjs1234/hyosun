package net.hyosun.love.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import net.hyosun.love.model.ApplyVO;
import net.hyosun.love.model.QnaVO;
import net.hyosun.love.service.ApplyService;

@Controller
@RequestMapping(value = "/cs")
public class CsController {

	@Autowired
	private ApplyService applyService;

	@RequestMapping(value = "/cs-apply", method = RequestMethod.GET)
	public String cs_apply(HttpSession session, Model model, String seq) {

		session.getAttribute("USER");

		ApplyVO applyVO = applyService.findById(seq);

		model.addAttribute("APPLY", applyVO);

		return "/cs/cs-apply";
	}

	@RequestMapping(value = "/cs-apply", method = RequestMethod.POST)
	public String cs_apply(ApplyVO applyvo, MultipartFile file) {
		applyService.FileUpload(applyvo, file);

		return "redirect:/cs/cs-apply-end";
	}

	@RequestMapping(value = "/cs-apply-end", method = RequestMethod.GET)
	public String cs_apply_end() {

		return "/cs/cs-apply-end";
	}

	@RequestMapping(value = "/cs-faq", method = RequestMethod.GET)
	public String cs_faq() {

		return "/cs/cs-faq";
	}

	@RequestMapping(value = "/cs-qna", method = RequestMethod.GET)
	public String cs_qna(HttpSession session) {

		session.getAttribute("USER");
		return "/cs/cs-qna";
	}

	@RequestMapping(value = "/cs-qna", method = RequestMethod.POST)
	public String cs_qna(QnaVO quaVO) {

		return "redirect:/cs/cs-qna-list";
	}

	@RequestMapping(value = "/cs-qna-list", method = RequestMethod.GET)
	public String cs_qna_list() {

		return "/cs/cs-qna-list";
	}

	@RequestMapping(value = "/cs-qna-view", method = RequestMethod.GET)
	public String cs_qna_view() {

		return "/cs/cs-qna-view";
	}
}
