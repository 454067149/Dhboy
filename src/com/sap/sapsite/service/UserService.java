package com.sap.sapsite.service;

import java.util.List;

import com.sap.sapsite.pojo.User;

/**
 * @类名：UserService
 * @描述：TODO(后台管理员的Service)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月26日上午10:34:50
 */
public interface UserService {
	
	//后台获取管理员列表
	public List<User> findUserList();
	
	//数据库获取用户查询
	public User findUser(User user);
	
	//后台添加管理员
	public Integer addUser(User user);
	
	//后台删除管理员
	public Integer deleteUser(Integer id);
	
	//后台修改管理员
	public Integer updateUser(User user);
	
	//前台获取四条创新团队信息
	public List<User> getUserByTeam();
	
	//前台获取三条管理员信息
	public List<User> getUserByAdmin();
	
	//用于判断账号密码是否正确
	public User login(User user);
}
