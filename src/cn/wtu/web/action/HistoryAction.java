package cn.wtu.web.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Page;
import cn.wtu.service.HistoryService;

public class HistoryAction extends BaseAction {
	private HistoryService historyService;
	public HistoryService getHistoryService() {
		return historyService;
	}

	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}


	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pagenum=request.getParameter("pagenum");
		String servletName=this.getServletName();
		Page page=historyService.getPage(pagenum, request.getContextPath()+"/"+"Servlet/"+servletName);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/history/index.jsp").forward(request, response);
	}
	
}
