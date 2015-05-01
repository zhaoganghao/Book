package cn.wtu.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Book;
import cn.wtu.model.Borrow;
import cn.wtu.model.Category;
import cn.wtu.model.History;
import cn.wtu.model.Page;
import cn.wtu.service.BookService;
import cn.wtu.service.BorrowService;
import cn.wtu.service.CategoryService;
import cn.wtu.service.HistoryService;

public class FrontAction extends BaseAction {
	private BookService bookService;
	private BorrowService borrowService;
	private HistoryService historyService;
	private CategoryService categoryService;
	
	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public HistoryService getHistoryService() {
		return historyService;
	}

	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}

	public BorrowService getBorrowService() {
		return borrowService;
	}

	public void setBorrowService(BorrowService borrowService) {
		this.borrowService = borrowService;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}


	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=bookService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/book/index.jsp").forward(request, response);
	}
	
	public void borrowQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		List<Borrow> borrows=borrowService.getBorrowByUserId(userid);
		request.setAttribute("borrows", borrows);
		request.getRequestDispatcher("/front/user/borrow.jsp").forward(request, response);
	}
	public void historyQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		List<History> historys=historyService.getHistoryByUserId(userid);
		request.setAttribute("historys",historys);
		request.getRequestDispatcher("/front/user/history.jsp").forward(request, response);
	}
	public void query(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String content=request.getParameter("content");
		String wherejpql=" o.name like '%"+content+"%' " +"or o.descr like '%"+content+"%' "+" or o.author like '%"
		+content+"%' "+" or o.category.name like '%"+content+"%' " ;
			List<Book> books =bookService.findBook(wherejpql, null);
		request.setAttribute("books", books);
		request.getRequestDispatcher("/front/query.jsp").forward(request, response);
	}
	public void queryByCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String category=request.getParameter("category");
		String category1=new String(category.getBytes("ISO8859-1"),"utf-8");
		String wherejpql="  o.category.name like '%"+category1+"%' " ;
		List<Book> books =bookService.findBook(wherejpql, null);
		request.setAttribute("books", books);
		request.getRequestDispatcher("/front/query.jsp").forward(request, response);
	}
	public void queryCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Category> categorys=categoryService.getCategory(0);
		request.setAttribute("categorys",categorys);
		request.getRequestDispatcher("/front/findbook.jsp").forward(request, response);
	}
	
}
