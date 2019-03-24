package cn.aftertomorrow.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.aftertomorrow.po.Page;
import cn.aftertomorrow.service.ArticleService;

public class ArticleServiceTest {
	@Test
	public void listAllTest() {
		String xmlpath = "applicationContext.xml";
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlpath);
		ArticleService articleService = (ArticleService) applicationContext.getBean("articleServiceImpl");
		System.out.println(articleService.listAllWithTag().get(0).getUnicode());
	}
}
