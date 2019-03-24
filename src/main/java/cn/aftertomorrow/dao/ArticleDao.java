package cn.aftertomorrow.dao;

import java.util.List;

import cn.aftertomorrow.po.Article;
import cn.aftertomorrow.po.Page;

public interface ArticleDao {
	public void addArticle(Article article);

	public List<Article> listAll();

	public Article findArticleById(Integer id);

	public List<Article> findByPage(Page page);

	public List<Article> listAllWithTag();
}
