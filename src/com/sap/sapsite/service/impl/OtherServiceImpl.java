package com.sap.sapsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.sapsite.mapper.OtherMapper;
import com.sap.sapsite.pojo.Banner;
import com.sap.sapsite.service.OtherService;
@Service
public class OtherServiceImpl implements OtherService {
	
	@Autowired
	private OtherMapper om;
	
	//后台获取banner信息
	@Override
	public List<Banner> findBannerList() {
		return om.findBannerList();
	}

	//修改Banner幻灯
	@Override
	public Integer updateBannerById(Banner banner) {
		return om.updateBannerById(banner);
	}

	//获取banner信息
	@Override
	public Banner findBanner(Banner banner) {
		return om.findBanner(banner);
	}
	
	
}
