package com.sap.sapsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.sapsite.mapper.ArticleMapper;
import com.sap.sapsite.pojo.Article;
import com.sap.sapsite.pojo.Column;
import com.sap.sapsite.service.ArticlesService;
import com.sap.sapsite.utils.Tools;

@Service
public class ArticlesServiceImpl implements ArticlesService{

	@Autowired
	private ArticleMapper am;
	
	//后台根据栏目添加文章
	@Override
	public int addArticle(Article article) {
		article.setDate(Tools.getTime());
		return am.addArticle(article);
	}
	
	//前台根据栏目获取文章
	@Override
	public List<Article> findArticleByColumn(Integer column) {
		return am.findArticleByColumn(column);
	}
	
	//前台关于我们获取数据库前三条数据
	@Override
	public List<Article> findArticleByAboutUs(){
		return am.findArticleByAboutUs();
	}
	
	//前台新闻资讯获取数据库前四条数据
	@Override
	public List<Article> findArticleByNews(){
		return am.findArticleByNews();
	}
	
	//后台获取所有文章
	@Override
	public List<Article> findArticleList() {
		return am.findArticleList();
	}
	
	//后台删除文章
	@Override
	public Integer deleteArticle(Integer id) {
		return am.deleteArticle(id);
	}
	
	//后台修改文章
	@Override
	public Integer updateArticle(Article article) {
		article.setDate(Tools.getTime());
		return am.updateArticle(article);
	}
	
	//后台根据ID查找文章
	@Override
	public Article selectArticleById(Integer id) {	
		return am.selectArticleById(id);
	}
	
	//后台获取文章栏目
	@Override
	public List<Column> findArticleColumn(){
		return am.findArticleColumn();
	}
}
