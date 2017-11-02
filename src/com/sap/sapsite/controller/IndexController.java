package com.sap.sapsite.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sap.sapsite.service.ArticlesService;
import com.sap.sapsite.service.MessageService;
import com.sap.sapsite.service.OtherService;
import com.sap.sapsite.service.UserService;
/**
 * 
 * @类名：IndexController
 * @描述：TODO(主页ajax获取内容的控制器)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月28日下午3:50:32
 */
@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	private ArticlesService as;
	@Autowired
	private UserService us;
	@Autowired
	private OtherService os;
	@Autowired
	private MessageService ms;
	
	@RequestMapping("/connet")
	public String getConnet(Model model){
		
		//关于我们
		model.addAttribute("aboutUs", as.findArticleByAboutUs());
		
		//新闻资讯
		model.addAttribute("news", as.findArticleByNews());
		
		//获取Banner信息
		model.addAttribute("banners", os.findBannerList());
		
		//获取创新团队
		model.addAttribute("teams", us.getUserByTeam());
		
		//获取谨言
		model.addAttribute("admins", us.getUserByAdmin());
		
		return "../jsp/index";
	}
	
	//后台获取数据
	@RequestMapping("/getCount")
	@ResponseBody
	public Map<String,Integer> getCount(){
		Map<String,Integer> map = new HashMap<String, Integer>();
		//获取文章数量
		map.put("articleCount", as.findArticleList().size());
		
		//获取管理员数量
		map.put("userCount", us.findUserList().size());
		
		//获取留言数量
		map.put("messageCount",ms.findMessageList(null).size());
		
		//获取幻灯数量
		map.put("banner", os.findBannerList().size());
		
		return map;
	}
}
