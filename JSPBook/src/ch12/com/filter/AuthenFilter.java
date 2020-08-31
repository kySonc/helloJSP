package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter{
	//필터를 초기화하도록 init()메소드 작성
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		System.out.println("Filter01 초기화...");
	}
	
	//필터를 리소스에 적용하도록 doFilter()메소드 작성
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("Filter01.jsp수행...");
		//요청 파라미터를 받음
		String name = request.getParameter("name");
		//요청 파라미터가 없으면 응답 웹 페이지에 메시지 출력
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null입니다.";
			writer.println(message);
			return;
		}
		//연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain 객체타입의 doFilter()메소드 
		filterChain.doFilter(request, response);
	}
	//필터를 종료하기 전에 호출하도록 destroy()메소드 작성
	@Override
	public void destroy() {
		System.out.println("Filter01 해제");
	}
}
