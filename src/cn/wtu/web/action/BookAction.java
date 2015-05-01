package cn.wtu.web.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Book;
import cn.wtu.model.Page;
import cn.wtu.service.BookService;
import cn.wtu.service.CategoryService;

public class BookAction extends BaseAction {
	private BookService bookService;
	private CategoryService categoryService;
	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
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
	
	public void addInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("categorys", categoryService.getCategory(0));
		request.getRequestDispatcher("/book/add_input.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String categoryids=request.getParameter("categoryid");
		String name=request.getParameter("name");
		String descr=request.getParameter("descr");
		String ISBN=request.getParameter("ISBN");
		String author=request.getParameter("author");
		int categoryid=0;
		if(categoryids!=null&&!"".equals(categoryids)){
			categoryid=Integer.parseInt(categoryids);
		}
		Book book=new Book(name, descr, ISBN, author, categoryService.getCategoryById(categoryid),new Date());
		bookService.add(book);
		request.getRequestDispatcher("/common/pub_add_success.jsp").forward(request, response);
	}
	public void updateInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Book book=bookService.getBookById(Integer.parseInt(id));
		request.setAttribute("data",book );
		request.setAttribute("categorys", categoryService.getCategory(0));
		request.getRequestDispatcher("/book/update_input.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String categoryids=request.getParameter("categoryid");
		String ids=request.getParameter("id");
		String name=request.getParameter("name");
		String descr=request.getParameter("descr");
		String ISBN=request.getParameter("ISBN");
		String author=request.getParameter("author");
		int categoryid=0;
		if(categoryids!=null&&!"".equals(categoryids)){
			categoryid=Integer.parseInt(categoryids);
		}
		Book book=bookService.getBookById(Integer.parseInt(ids));
		book.setName(name);
		book.setAuthor(author);
		book.setDescr(descr);
		book.setISBN(ISBN);
		book.setCategory(categoryService.getCategoryById(categoryid));
		bookService.update(book);
		request.getRequestDispatcher("/common/pub_update_success.jsp").forward(request, response);
	}
	public void del(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		int id=Integer.parseInt(ids);
		bookService.del(bookService.getBookById(id));
		request.setAttribute("message", "还书成功");
		request.getRequestDispatcher("/common/pub_del_success.jsp").forward(request, response);
	}
}
