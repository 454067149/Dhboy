package com.sap.sapsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.sapsite.mapper.MessageMapper;
import com.sap.sapsite.pojo.Message;
import com.sap.sapsite.service.MessageService;
/**
 * 
 * @类名：MessageServiceImpl
 * @描述：TODO(网站留言的Service的实现类)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月27日上午11:24:52
 */
@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageMapper mm;
	
	//前台用于添加留言	
	@Override
	public int addMessage(Message message) {	
		return mm.addMessage(message);
	}
	
	//后台留言列表
	@Override
	public List<Message> findMessageList(Message message) {
		return mm.findMessageList(message);
	}
	
	//后台删除留言
	@Override
	public int deleteMessage(Integer id) {
		return mm.deleteMessage(id);
	}
	
	//后台审核留言
	@Override
	public int updateMessage(Integer id) {
		return mm.updateMessage(id);
	}

}
