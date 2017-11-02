package com.sap.sapsite.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.sap.sapsite.pojo.Message;
import com.sap.sapsite.service.MessageService;

/**
 * 
 * @类名：MessageController
 * @描述：TODO(网站留言的控制器)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月27日上午11:20:28
 */
@Controller
@RequestMapping("/message")
public class MessageController {
	@Autowired
	private MessageService ms;
	
	//前台用于添加留言
	@RequestMapping(value="/addMessage", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String addMessage(Message message){	
		ms.addMessage(message);//添加数据
		return message.getContent();		
	}
	
	//后台留言列表
	@RequestMapping("/findMessageList")
	@ResponseBody
	public Map<String,Object> findMessageList(){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", ms.findMessageList(null));
		return map;
	}
	
	//删除评论
	@RequestMapping("/deleteMessage")
	public String deleteMessage(Integer id){
		if(ms.deleteMessage(id)>0){
			return "redirect:../admin/pages/ly/lylb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//审核评论updateMessage
	@RequestMapping("/updateMessage")
	public String updateMessage(Integer id){
		if(ms.updateMessage(id)>0){
			return "redirect:../admin/pages/ly/lylb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//获取已审核额留言
	@RequestMapping("/findMessageByAudit")
	@ResponseBody
	public List<Message> findMessageByAudit(){
				
		Message message = new Message();
		message.setAudit("1");
		
		PageHelper.startPage(1,5);//实现留言分页
		return ms.findMessageList(message);
	}
	
	
}
