package cn.aftertomorrow.service;

import java.util.List;

import cn.aftertomorrow.po.Article;
import cn.aftertomorrow.po.Page;

public interface ArticleService {
	public void addArticle(Article article);

	public List<Article> listAll();

	public Article findArticleById(Integer id);

	public List<Article> findByPage(Page page);

	public List<Article> listAllWithTag();
}
