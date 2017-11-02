package com.sap.sapsite.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
/**
 * 
 * @类名：OtherController
 * @描述：TODO(主要用于banner与导航)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月28日下午4:55:38
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sap.sapsite.pojo.Banner;
import com.sap.sapsite.service.OtherService;
@Controller
@RequestMapping("/other")
public class OtherController {
	@Autowired
	private OtherService os;
	
	//获取banner列表
	@RequestMapping("/findUserList")
	@ResponseBody
	public Map<String,Object> findUserList() {	
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", os.findBannerList());
		return  map;
	}
	
	//获取Banner幻灯
	@RequestMapping("/getBannerById")
	public String getBannerById(Banner banner,Model model){
		model.addAttribute("banner", os.findBanner(banner));
		return "../admin/pages/other/bannerxg";
	}
	
	//修改Banner幻灯
	@RequestMapping("/updateBannerById")
	public String updateBannerById(Banner banner){
		if(os.updateBannerById(banner)>0){
			return "redirect:../admin/pages/other/banner.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}			
	}
	
}
