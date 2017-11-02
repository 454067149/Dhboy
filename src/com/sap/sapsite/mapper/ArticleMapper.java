package com.sap.sapsite.mapper;

import java.util.List;

import com.sap.sapsite.pojo.Article;
import com.sap.sapsite.pojo.Column;

public interface ArticleMapper {
	//前台根据栏目编号查询文章
	public List<Article> findArticleByColumn(Integer column);
	
	//前台关于我们获取数据库前三条数据
	public List<Article> findArticleByAboutUs();
	
	//前台新闻资讯获取数据库前四条数据
	public List<Article> findArticleByNews();
	
	//后台添加文章内容
	public int addArticle(Article article);
	
	//后台获取所有文章
	public List<Article> findArticleList();
	
	//后台删除文章
	public Integer deleteArticle(Integer id);
	
	//后台修改文章
	public Integer updateArticle(Article article);
	
	//根据id查询文章
	public Article selectArticleById(Integer id);
	
	//后台获取文章栏目
	public List<Column> findArticleColumn();

}
