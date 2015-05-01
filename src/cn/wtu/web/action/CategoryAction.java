package cn.wtu.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wtu.model.Category;
import cn.wtu.service.CategoryService;

public class CategoryAction extends BaseAction {
	private CategoryService categoryService;
	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@Override
	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pids=request.getParameter("pid");
		int pid=0;
		if(pids!=null&&!"".equals(pids)){
			pid=Integer.parseInt(pids);
		}
		List<Category> list=categoryService.getCategory(pid);
		request.setAttribute("list",list );
		request.getRequestDispatcher("/category/index.jsp").forward(request, response);
	}
	
	public void addInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("pid", request.getParameter("pid"));
		request.getRequestDispatcher("/category/add_input.jsp").forward(request, response);
	}
	public void add(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pids=request.getParameter("pid");
		String name=request.getParameter("name");
		int pid=0;
		if(pids!=null&&!"".equals(pids)){
			pid=Integer.parseInt(pids);
		}
		Category parent=categoryService.getCategoryById(pid);
		Category category=new Category(name, parent);
		categoryService.add(category);
		request.getRequestDispatcher("/common/pub_add_success.jsp").forward(request, response);
	}
	public void updateInput(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Category category=categoryService.getCategoryById(Integer.parseInt(id));
		request.setAttribute("data",category );
		request.getRequestDispatcher("/category/update_input.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		String name=request.getParameter("name");
		
		int id=Integer.parseInt(ids);
		Category category=categoryService.getCategoryById(id);
		category.setName(name);
		categoryService.update(category);
		request.getRequestDispatcher("/common/pub_update_success.jsp").forward(request, response);
	}
	public void del(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String ids=request.getParameter("id");
		String pids=request.getParameter("pid");
		String name=request.getParameter("name");
		int id=Integer.parseInt(ids);
		categoryService.del(categoryService.getCategoryById(id));
		response.sendRedirect(request.getContextPath()+"/Servlet/CategoryAction?pid="+pids);
	}
}
