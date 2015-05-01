package cn.wtu.web.action;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wtu.model.User;
import cn.wtu.model.Page;
import cn.wtu.service.UserService;
import cn.wtu.service.CategoryService;

public class UserAction extends BaseAction {
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=userService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/user/index.jsp").forward(request, response);
	}
	
	public void addInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/user/add_input.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String diploma=request.getParameter("diploma");
		String sex=request.getParameter("sex");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String department=request.getParameter("department");
		String classs=request.getParameter("classs");
		String toschool=request.getParameter("toschool");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date tosch=null;
		try {
			if(toschool!=null&&!"".equals(toschool.trim()))
			tosch=dateFormat.parse(toschool);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date period=new Date(tosch.getTime()+3600*24*350*4);
		User user=new User(id,classs,tosch, name, password, new Date(), period, diploma, sex, phone, department, email,2,6,2);
		try {
			userService.add(user);
		} catch (Exception e) {
			request.setAttribute("message", "学号不对");
			request.getRequestDispatcher("/common/exception.jsp").forward(request, response);
			e.printStackTrace();
		}
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("/front/user/index.jsp").forward(request, response);
	}
	public void updateInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		User user=userService.getUserById(id);
		request.setAttribute("data",user );
		request.getRequestDispatcher("/user/update_input.jsp").forward(request, response);
	}
	public void updateMaxNum(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String maxNum=request.getParameter("maxNum");
		String id=request.getParameter("id");
		User user=userService.getUserById(id);
		user.setMaxNum(Integer.parseInt(maxNum));
		userService.update(user);
		execute(request,response);
	}
	public void updateMaxOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String maxOrder=request.getParameter("maxOrder");
		User user=userService.getUserById(id);
		user.setMaxOrder(Integer.parseInt(maxOrder));
		userService.update(user);
		execute(request,response);
	}
	public void update(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String diploma=request.getParameter("diploma");
		String sex=request.getParameter("sex");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String department=request.getParameter("department");
		User user=userService.getUserById(id);
		user.setDiploma(diploma);
		user.setName(name);
		user.setSex(sex);
		user.setPassword(password);
		user.setPhone(phone);
		user.setDepartment(department);
		user.setEmail(email);
		userService.update(user);
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("/front/user/update_user.jsp").forward(request, response);
	}
	public void del(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		userService.del(userService.getUserById(id));
		response.sendRedirect(request.getContextPath()+"/Servlet/UserAction");
	}
	public void login(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		User user=userService.getUserById(id);
		
		if(user==null||!user.getPassword().equals(password.trim())){
			request.setAttribute("message", "用户不存在或密码错误");
			request.getRequestDispatcher("/common/exception.jsp").forward(request, response);
			return;	
		}
		
		HttpSession session= request.getSession();
		session.setAttribute("user", user);
		if(user.getState()==1){
			request.getRequestDispatcher("/user/shouye.jsp").forward(request, response);
			return;	
		}
		response.sendRedirect(request.getContextPath()+"/front/user/index.jsp");
	}
	public void logout(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user=(User) request.getSession().getAttribute("user");
		request.getSession().removeAttribute("user");
		response.sendRedirect(request.getContextPath()+"/front/index.jsp");
	}
}
