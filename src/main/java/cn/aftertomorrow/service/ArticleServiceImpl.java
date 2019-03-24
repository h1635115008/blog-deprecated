package cn.aftertomorrow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.aftertomorrow.dao.ArticleDao;
import cn.aftertomorrow.po.Article;
import cn.aftertomorrow.po.Page;

@Service
@Transactional
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	private ArticleDao articleDao;

	public List<Article> listAll() {
		// TODO Auto-generated method stub
		return this.articleDao.listAll();
	}

	public Article findArticleById(Integer id) {
		// TODO Auto-generated method stub
		return this.articleDao.findArticleById(id);
	}

	public List<Article> findByPage(Page page) {
		// TODO Auto-generated method stub
		return this.articleDao.findByPage(page);
	}

	public void addArticle(Article article) {
		// TODO Auto-generated method stub
		articleDao.addArticle(article);
	}

	@Override
	public List<Article> listAllWithTag() {
		// TODO Auto-generated method stub
		return articleDao.listAllWithTag();
	}
}
