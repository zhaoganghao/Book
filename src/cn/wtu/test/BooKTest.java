package cn.wtu.test;

import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.Test;

import cn.wtu.model.News;
import cn.wtu.service.NewsService;
import cn.wtu.service.impl.NewsServiceImpl;

public class BooKTest {

	@Test
	public void test() {
		NewsService s=new	NewsServiceImpl();
		s.add(new News());
	}
	@Test
	public void test2() {
	new AnnotationConfiguration().configure();
}
}