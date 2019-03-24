package cn.aftertomorrow.controller;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.aftertomorrow.po.Article;
import cn.aftertomorrow.po.Page;
import cn.aftertomorrow.po.Tag;
import cn.aftertomorrow.service.ArticleService;
import cn.aftertomorrow.service.TagService;

@Controller
public class ArticleController {
	@Autowired
	private ArticleService aticleService;
	@Autowired
	private TagService tagService;

	@RequestMapping("/index")
	public String findBypage(Integer current, Model model) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("跳转主页");
		if (current == null) {
			current = 1;
		}
		System.out.println(current);
		Page page = new Page((current - 1) * 8, 8);
		List<Article> articles = aticleService.findByPage(page);
		model.addAttribute("articles", articles);
		model.addAttribute("maxPage", aticleService.listAll().size() / 8 + 1);
		model.addAttribute("path", "index");
		return "index";
	}

	@RequestMapping("/")
	public String redirect() throws Exception {
		// TODO Auto-generated method stub
		return "redirect:index";
	}

	@RequestMapping("/file")
	public String findByTime(Model model) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("跳转归档");
		Map<String, List<Article>> aticleOrderByYears = new TreeMap<>(new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				return o2.compareTo(o1);
			}
		});
		List<Article> articles = aticleService.listAll();
		for (Article article : articles) {
			String year = String.valueOf(article.getTime().getYear() + 1900);
			if (aticleOrderByYears.get(year) == null) {
				List<Article> aticleOrderByYear = new ArrayList<>();
				aticleOrderByYear.add(article);
				aticleOrderByYears.put(year, aticleOrderByYear);
			} else {
				aticleOrderByYears.get(year).add(article);
			}
		}
		model.addAttribute("aticleOrderByYears", aticleOrderByYears);
		aticleOrderByYears.keySet();
		return "file";
	}

	@RequestMapping("/tag")
	public String findByTag(Integer current, Model model) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("跳转标签");
		Map<String, List<Article>> aticleOrderByTags = new HashMap<>();
		List<Article> articles = aticleService.listAllWithTag();
		for (Article article : articles) {
			String tagName = String.valueOf(article.getName());
			if (aticleOrderByTags.get(tagName) == null) {
				List<Article> aticleOrderByTag = new ArrayList<>();
				aticleOrderByTag.add(article);
				aticleOrderByTags.put(tagName, aticleOrderByTag);
			} else {
				aticleOrderByTags.get(tagName).add(article);
			}
		}
		model.addAttribute("aticleOrderByTags", aticleOrderByTags);
		return "tag";
	}

	@RequestMapping("/text")
	public String findById(Integer id, Model model) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("跳转全文");
		model.addAttribute("article", aticleService.findArticleById(id));
		return "text";
	}

	@RequestMapping("/write")
	public String goToWrite(Model model) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("跳转写博客");
		Map<String, List<Tag>> tagOrderByKinds = new HashMap<>();
		List<Tag> tags = tagService.listAll();
		for (Tag tag : tags) {
			String kind = String.valueOf(tag.getKind());
			if (tagOrderByKinds.get(kind) == null) {
				List<Tag> tagOrderByKind = new ArrayList<>();
				tagOrderByKind.add(tag);
				tagOrderByKinds.put(kind, tagOrderByKind);
			} else {
				tagOrderByKinds.get(kind).add(tag);
			}
		}
		model.addAttribute("tagOrderByKinds", tagOrderByKinds);
		return "write";
	}

	@RequestMapping("/addArticle")
	public String write(Article article) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("添加文章");
		URLDecoder urlDecoder = new URLDecoder();
		article.setTitle(urlDecoder.decode(article.getTitle(), "UTF-8"));
		article.setDetail(urlDecoder.decode(article.getDetail(), "UTF-8"));
		article.setText(urlDecoder.decode(article.getText(), "UTF-8"));
		article.setTag(urlDecoder.decode(article.getTag(), "UTF-8"));
		article.setTime(new Date());
		article.setView(0);
		System.out.println(article);
		aticleService.addArticle(article);
		return "write";
	}
}
