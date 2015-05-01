package cn.wtu.web.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Message;
import cn.wtu.model.Page;
import cn.wtu.model.Reply;
import cn.wtu.model.User;
import cn.wtu.service.MessageService;
import cn.wtu.service.ReplyService;
import cn.wtu.service.UserService;

public class MessageAction extends BaseAction {
	private MessageService messageService;
	private UserService userService;
	private ReplyService replyService;
	public ReplyService getReplyService() {
		return replyService;
	}

	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=messageService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/message/index.jsp").forward(request, response);
	}
	
	public void addInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/message/add_input.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String cont=request.getParameter("cont");
		User user=userService.getUserById(userid);
		Message message=new Message(cont, null, user,new Date());
		messageService.add(message);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	public void replyInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String userid=request.getParameter("userid");
		request.setAttribute("id", id);
		request.setAttribute("userid", userid);
		request.getRequestDispatcher("/message/reply_input.jsp").forward(request, response);
	}
	public void reply(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String cont=request.getParameter("cont");
		String userid=request.getParameter("userid");
		String id=request.getParameter("id");
		Message message=messageService.getMessageById(Integer.parseInt(id));
		User user=userService.getUserById(userid);
		Reply reply=new Reply(cont, user, message,new Date());
		replyService.add(reply);
		request.getRequestDispatcher("/common/pub_add_success.jsp").forward(request, response);
	}
	public void del(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		int id=Integer.parseInt(ids);
		messageService.del(messageService.getMessageById(id));
		request.getRequestDispatcher("/common/pub_del_success.jsp").forward(request, response);
	}
	public void getMessage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Message message=messageService.getMessageById(Integer.parseInt(id));
		request.setAttribute("message", message);
		request.getRequestDispatcher("/front/message_infor.jsp").forward(request, response);
	}
}
