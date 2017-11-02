package com.sap.sapsite.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.sap.sapsite.pojo.Article;
import com.sap.sapsite.pojo.Column;
/**
 * @类名：ArticleController
 * @描述：TODO(该处理器用于文章操作)
 * @作者：MaoDehao
 * @版本：1.0
 * @日期：2017年10月23日下午6:43:38
 */
import com.sap.sapsite.service.ArticlesService;
@Controller
@RequestMapping("article")
public class ArticleController {
	@Autowired
	private ArticlesService as;
	
	//后台添加文章
	@RequestMapping("/addArticle")
	public String addArticle(Article article){
		if(as.addArticle(article)>0){
			return "redirect:../admin/pages/nrgl/nrlb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//后台进行内容显示
	@RequestMapping("/getArticleList")
	@ResponseBody
	public Map<String,Object> getArticleList(){	
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("data", as.findArticleList());
		return  map;
	}
	
	//后台内容维护点击修改获取修改内容详情
	@RequestMapping("/getArticle")
	public String getArticle(Integer id,Model model){	
		Article article = as.selectArticleById(id);
		if(article != null){
			model.addAttribute("article", article);
			return "../admin/pages/nrgl/nrxg";
		}else {
			return "redirect:../admin/500.jsp";
		}
		
	}
	
	//后台获取文章栏目
	@RequestMapping("/findArticleColumn")
	public String findArticleColumn(Model model){
		List<Column> col = as.findArticleColumn();	
		if(!col.isEmpty()){
			model.addAttribute("Column", col);
			return "../admin/pages/nrgl/nrxg";
		}else{
			return "../admin/500";
		}	
	}
	
	//后台进行修改数据
	@RequestMapping("/updateArticle")
	public String updateArticle(Article article){
		if(as.updateArticle(article)>0){
			return "redirect:../admin/pages/nrgl/nrlb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//后台进行删除文章内容
	@RequestMapping("/deleteArticle")
	public String deleteArticle(Integer id){
		if(as.deleteArticle(id)>0){
			return "redirect:../admin/pages/nrgl/nrlb.jsp";
		}else{
			return "redirect:../admin/500.jsp";
		}	
	}
	
	//前台根据栏目编号获取文章内容列表
	@RequestMapping("/finArticleByColumn")
	public String findArticleByColumn(Integer column,Model model,Integer pageNum){	
		
		if(pageNum ==null || "".equals(pageNum)){pageNum = 1;}//页号初始化
		
		Integer total = as.findArticleByColumn(column).size();//栏目总的文章数
		Integer pageCount = 4;//每页多少行
		System.out.println("*****************");
		System.out.println(total);
		
		
		PageHelper.startPage(pageNum , pageCount);
		List<Article> list = as.findArticleByColumn(column);
		
		model.addAttribute("articleListByColumn", list);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("total", total);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("column", column);
		return "../jsp/news";
	}
	
	//前台根据id获取文章详细内容
	@RequestMapping("/findArticleByIndex")
	public String findArticleByIndex(Integer id,Model model){
		Article article = as.selectArticleById(id);
		if(article != null){
			model.addAttribute("content", article);
			return "../jsp/content";
		}else{
			return "redirect:../jsp/index.jsp";
		}
		
	}
}
