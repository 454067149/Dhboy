package com.sap.sapsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.sapsite.mapper.UserMapper;
import com.sap.sapsite.pojo.User;
import com.sap.sapsite.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper um;
	
	//后台获取管理员列表
	@Override
	public List<User> findUserList() {		
		return um.findUserList();
	}
	
	//数据库获取用户查询
	@Override
	public User findUser(User user) {		
		return um.findUser(user);
	}
	
	//后台添加管理员
	@Override
	public Integer addUser(User user) {
		return um.addUser(user);
	}
	
	//后台删除管理员
	@Override
	public Integer deleteUser(Integer id) {
		return um.deleteUser(id);
	}
	
	//后台修改管理员
	@Override
	public Integer updateUser(User user) {
		return um.updateUser(user);
	}

	//前台获取四条创新团队信息
	@Override
	public List<User> getUserByTeam() {
		return um.getUserByTeam();
	}
	
	//前台获取三条管理员信息
	@Override
	public List<User> getUserByAdmin() {		
		return um.getUserByAdmin();
	}
    
	//用于判断账号密码是否正确
	@Override
	public User login(User user) {
		User us = null;
		List<User> userList = um.findUserList();
		for(User u:userList){
			if(u.getName().equals(user.getName()) && u.getPwd().equals(user.getPwd())){
				us = u;
			}
		}
		return us;
	}
	
	
	
}
