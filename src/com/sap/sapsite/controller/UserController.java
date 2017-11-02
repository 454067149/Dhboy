package com.sap.sapsite.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sap.sapsite.pojo.User;
import com.sap.sapsite.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService us;
	
	//后台获取管理员列表
	@RequestMapping("/findUserList")
	@ResponseBody
	public Map<String,Object> findUserList() {	
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", us.findUserList());
		return  map;
	}
	
	//后台ajax根据用户名查询
	@RequestMapping("/findUser")
	@ResponseBody
	public String findUser(User user){	
		if(us.findUser(user) == null){
			return "{\"user\":\"0\"}";
		}else{
			return "{\"user\":\"1\"}";
		}	
	}
	
	//后台添加用户
	@RequestMapping("/addUser")
	public String addUser(User user){	
		if(us.addUser(user)>0){
			return "redirect:../admin/pages/user/yhlb.jsp";
		}else{
			return "redirect:../admin/pages/user/tjyh.jsp";
		}	
	}
	
	//后台删除管理员
	@RequestMapping("/deleteUser")
	public String deleteUser(Integer id) {
		if(us.deleteUser(id)>0){
			return "redirect:../admin/pages/user/yhlb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//根据Id获取要修改的管理员id，并跳转修改页面
	@RequestMapping("/findUserById")
	public String findUserById(User user,Model model){
		User u = us.findUser(user);
		if(u != null){
			model.addAttribute("userXg",u);
			return "../admin/pages/user/yhxg";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//后台修改管理员
	@RequestMapping("/updeteUser")
	public String updeteUser(User user){			
		if(us.updateUser(user)>0){
			return "redirect:../admin/pages/user/yhlb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}
	}
	
	//获取后台登陆的账号密码
	@RequestMapping("/login")
	public String login(User use,HttpSession session,Model model){
		User user = us.login(use);
		if(user!=null){
			session.setAttribute("user", user);
			return "redirect:../admin/home.jsp";
		}else{
			model.addAttribute("pwd", "密码错误");
			return "../admin/index";
		}
	}
	
	//用于注销用户
	@RequestMapping("/edit")
	public String edit(HttpSession session){
		session.removeAttribute("user");
		return "redirect:../admin/index.jsp";
	}
	
	
	
	
	
}