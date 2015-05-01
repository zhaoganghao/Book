package cn.wtu.web.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Book;
import cn.wtu.model.Borrow;
import cn.wtu.model.History;
import cn.wtu.model.Page;
import cn.wtu.model.User;
import cn.wtu.service.BookService;
import cn.wtu.service.BorrowService;
import cn.wtu.service.HistoryService;
import cn.wtu.service.UserService;
import cn.wtu.web.utils.Period;

public class BorrowAction extends BaseAction {
	private BorrowService borrowService;
	private UserService userService;
	private BookService bookService;
	private HistoryService historyService;
	
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

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	@Override
	protected void execute(HttpServletRequest request,//借书列表
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=borrowService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.setAttribute("date", new Date());
		request.getRequestDispatcher("/borrow/index.jsp").forward(request, response);
	}
	
	
	public void borrowQuery(HttpServletRequest request,//导航借书入口
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		if(userid!=null){
			User user =userService.getUserById(userid);
			List<Borrow> borrows=borrowService.getBorrowByUserId(userid);
			long price=0;
			for(Borrow borr : borrows){
				if(borr.getSize()<0){
					price=price-borr.getSize();
				}
			}
			user.setPrice((int)price);
			userService.update(user);
			request.setAttribute("user", user);
			request.setAttribute("price", price);
			request.setAttribute("borrows", borrows);
			
			request.getRequestDispatcher("/borrow/user_list.jsp").forward(request, response);
		}else{
			request.setAttribute("message", "用户不存在");
			request.getRequestDispatcher("/common/exception.jsp").forward(request, response);
		}
	}
	
	public void pay2(HttpServletRequest request,//还书
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		User user = userService.getUserById(userid);
		List<Borrow> borrows=borrowService.getBorrowByUserId(userid);
		for(Borrow borr : borrows){
			borr.setShouldTime(new Date());
			borrowService.update(borr);
		}
		user.setPrice(0);
		userService.update(user);
		this.borrowQuery(request,response);
	}
	public void borrowInput(HttpServletRequest request,//导航借书入口
			HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/borrow/borrow_input.jsp").forward(request, response);
	}
	public void borrow(HttpServletRequest request,//借书
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String ISBN=request.getParameter("ISBN");
		User user =userService.getUserById(userid);
		Book book= bookService.getBookByISBN(ISBN);
		Borrow borrow =new Borrow(user, book, new Date(),Period.getNextMonth(new Date()), 0);
		borrowService.add(borrow);
		request.getRequestDispatcher("/common/pub_add_success.jsp").forward(request, response);
	}
	public void updateInput(HttpServletRequest request,//续借
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Borrow borrow=borrowService.getBorrowById(Integer.parseInt(id));
		request.setAttribute("data",borrow );
		request.getRequestDispatcher("/Borrow/update_input.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request,//续借
			HttpServletResponse response) throws ServletException, IOException {
		String state=request.getParameter("state");
		String id=request.getParameter("id");
		Borrow borrow=borrowService.getBorrowById(Integer.parseInt(id));
		borrow.setState(Integer.parseInt(state));
		borrowService.update(borrow);
		request.setAttribute("message", "续借成功");
		request.getRequestDispatcher("/common/pub_update_success.jsp").forward(request, response);
	}
	public void ISBNInput(HttpServletRequest request,//导航借书入口
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/borrow/ISBN_input.jsp").forward(request, response);
	}
	public void ISBNList(HttpServletRequest request,//导航借书入口
			HttpServletResponse response) throws ServletException, IOException {
		String ISBN=request.getParameter("ISBN");
		Borrow borrow=borrowService.getBorrowByISBN(ISBN);
		if(borrow!=null){
			List<Borrow> borrows=borrowService.getBorrowByUserId(borrow.getUser().getId());
			long price=0;
			for(Borrow borr : borrows){
				if(borr.getSize()<0){
					price=price-borr.getSize();
				}
			}
			
			request.setAttribute("borrows", borrows);
			request.setAttribute("price", price);
			request.setAttribute("ISBN", ISBN);
			request.setAttribute("user", borrow.getUser());
			request.getRequestDispatcher("/borrow/ISBN_list.jsp").forward(request, response);	
		}else{
			request.setAttribute("message", "书号不存在");
			request.getRequestDispatcher("/common/exception.jsp").forward(request, response);
		}
		
	}
	/*public void returInput(HttpServletRequest request,//还书
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/borrow/retur_Input.jsp").forward(request, response);
	}*/
	public void pay(HttpServletRequest request,//还书
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		User user = userService.getUserById(userid);
		List<Borrow> borrows=borrowService.getBorrowByUserId(userid);
		for(Borrow borr : borrows){
			borr.setShouldTime(new Date());
			borrowService.update(borr);
		}
		user.setPrice(0);
		userService.update(user);
		this.ISBNList(request,response);
	}
	
	
	public void returQuery(HttpServletRequest request,//还书扣费处理
			HttpServletResponse response) throws ServletException, IOException {
		String ISBN=request.getParameter("ISBN");
		Borrow borrow=borrowService.getBorrowByISBN(ISBN);
		Date current=new Date();
		Date shouldDate=borrow.getShouldTime();
		long n1 = current.getTime();
		long n2 =  shouldDate.getTime();
		int size=(int) ((n2-n1)/(3600 * 1000 * 24));
		request.setAttribute("data", borrow);
		request.setAttribute("size", size);
		request.getRequestDispatcher("/borrow/retur_result.jsp").forward(request, response);
	}
	public void retur(HttpServletRequest request,//还书
			HttpServletResponse response) throws ServletException, IOException {
		String ISBN=request.getParameter("ISBN");
		Borrow borrow=borrowService.getBorrowByISBN(ISBN);
		History history= new History(borrow.getBook(), borrow.getUser(), borrow.getBorrowTime(),new Date());
		historyService.add(history);
		borrowService.del(borrow);
		request.setAttribute("message", "还书成功");
		request.getRequestDispatcher("/common/return_success.jsp").forward(request, response);
	}
}
