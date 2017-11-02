package com.sap.sapsite.mapper;

import java.util.List;

import com.sap.sapsite.pojo.Banner;
import com.sap.sapsite.pojo.Message;

/**
 * 
 * @类名：MessageMapper
 * @描述：TODO(网站留言的Mapper)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月27日上午11:19:51
 */
public interface MessageMapper {
	//前台用于添加留言
	public int addMessage(Message message);
	
	//后台留言列表
	public List<Message> findMessageList(Message message);
	
	//后台删除留言
	public int deleteMessage(Integer id);
	
	//后台审核留言
	public int updateMessage(Integer id);
	
	//获取banner信息
	public List<Banner> findBannerList();
}
