package com.icehockey.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icehockey.entity.User;
import com.icehockey.service.UserService;

/**
 * Servlet implementation class WeightServlet
 */
@WebServlet("/WeightServlet")
public class WeightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WeightServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Access-Control-Allow-Origin", "*");
		HttpSession session = request.getSession();
		response.setContentType("application/json");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("set-Cookie", "name=value;HttpOnly");
		System.out.println("-------------HobbySelectIce.html-----------");
		PrintWriter writer = response.getWriter();
		User user = null;

		User userNew = null;
		Map<String, Object> map = new HashMap<String, Object>();
		UserService userService = new UserService();
		System.out.println("跳转后的sessionId :" + session.getId());
		// session
		if (session.getAttribute("user") == null) {
			map.put("reslut", "-1");
		} else {
			System.out.println("跳转前的sessionId :" + session.getId());
			user = (User) session.getAttribute("user");
			userNew = (User) session.getAttribute("userNew");
			System.out.println("user: " + user);

			// 前端获取传入的data
			String weightValue = "";
			double weight = -1;
			if (request.getParameter("weight") != null) {
				weightValue = request.getParameter("weight");
				// 转化weight
				weight = Double.parseDouble(weightValue);
			} else {
				map.put("reslut", "-2");
			}

			System.out.println("找到当前session用户" + user);
			user = userService.updateUserWeight(userNew.getUserId(), weight);
			if (user != null) {// 插入成功
				System.out.println("插入后用户" + user);
				// 处理成功返回result=0
				map.put("result", "0");
				map.put("weight", weight);
				session.setAttribute("user", user);
				session.setAttribute("userNew", userNew);
				System.out.println("map..." + map);
			} else {
				map.put("result", "-3");
			}

		}
		// 根据result值，判断页面如何跳转
		if ("0".equals(map.get("result"))) {// 登录成功，且不是第一次登陆
			System.out.println("页面操作正确");

			writer.println("<script language='javascript'>window.location.href='./views/part4/role.jsp'</script>");

		} else if ("-1".equals(map.get("result"))) {// 登陆失败，用户名不存在
			writer.println("<script language='javascript'>alert('当前没有登录用户');window.location.href='./views/login.html'</script>");

		} else if ("-2".equals(map.get("result"))) {// 前端错误
			writer.println("<script language='javascript'>alert('前端错误');window.location.href='history.back(-1);'</script>");

		} else if ("-3".equals(map.get("result"))) {// 插入失败
			writer.println("<script language='javascript'>alert('插入失败');window.location.href='history.back(-1);'</script>");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
