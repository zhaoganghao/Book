package cn.wtu.web.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Message;
import cn.wtu.model.News;
import cn.wtu.model.Page;
import cn.wtu.service.MessageService;
import cn.wtu.service.NewsService;

public class NewsAction extends BaseAction {
	private NewsService newsService;
	private MessageService messageService;

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=newsService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/news/index.jsp").forward(request, response);
	}
	
	public void addInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/news/add_input.jsp").forward(request, response);
	}
	public void getInfor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		News news=newsService.getNewsById(Integer.parseInt(ids));
		request.setAttribute("data",news );
		request.getRequestDispatcher("/news/infor.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("title");
		String cont=request.getParameter("cont");
		String source=request.getParameter("source");
		String author=request.getParameter("author");
		News news=new News(title, cont, new Date(), author, source);
		newsService.add(news);
		request.getRequestDispatcher("/common/pub_add_success.jsp").forward(request, response);
	}
	public void updateInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		News news=newsService.getNewsById(Integer.parseInt(id));
		request.setAttribute("data",news );
		request.getRequestDispatcher("/news/update_input.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String title=request.getParameter("name");
		String cont=request.getParameter("name");
		String source=request.getParameter("name");
		String author=request.getParameter("descr");
		News news=newsService.getNewsById(Integer.parseInt(id));
		news.setAuthor(author);
		news.setCont(cont);
		news.setSource(source);
		news.setTitle(title);
		newsService.update(news);
		request.getRequestDispatcher("/common/pub_update_success.jsp").forward(request, response);
	}
	public void del(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		int id=Integer.parseInt(ids);
		newsService.del(newsService.getNewsById(id));
		response.sendRedirect(request.getContextPath()+"/Servlet/NewsAction");
	}
	public void getInformation(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<News> newss=newsService.getAll();
		List<Message> messages=messageService.getAllNoReply();
		request.setAttribute("messages", messages);
		request.setAttribute("newss", newss);
		request.getRequestDispatcher("/front/index.jsp").forward(request, response);
	}
	public void getNews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		News news=newsService.getNewsById(Integer.parseInt(id));
		request.setAttribute("news", news);
		request.getRequestDispatcher("/front/news_infor.jsp").forward(request, response);
	}
}
