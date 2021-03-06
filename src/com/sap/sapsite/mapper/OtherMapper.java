package com.sap.sapsite.mapper;

import java.util.List;

import com.sap.sapsite.pojo.Banner;

/**
 * 
 * @类名：OtherMapper
 * @描述：TODO(主要用于banner与导航)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月28日下午4:46:44
 */
public interface OtherMapper {
	
	//获取全部banner信息
	public List<Banner> findBannerList();
	
	//获取banner信息
	public Banner findBanner(Banner banner);
	
	//修改Banner幻灯
	public Integer updateBannerById(Banner banner);
	
}
