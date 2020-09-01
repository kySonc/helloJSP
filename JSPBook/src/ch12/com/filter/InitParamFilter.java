package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter{
	
	private FilterConfig filterConfig = null;
	
	//필터를 초기화 하도록 inin()메소드 작성
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화...");
		this.filterConfig = filterConfig;
	}
	
	//필터를 리소스에 적용하도록 doFilter()메소드를 작성
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter02 수행...");
		//폼 페이지에서 전송된 요청 파라미터인 아이디와 비밀번호를 전달받도록 request내장 객체의 getParameter()메소드를 작성
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		//web.xml파일의<init-param>요소에 설정된 매개변수 param1,param2를 전달 받도록 FilterConfig 객체의 getInitParameter()메소드 작성
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		String message;
		//응답 웹 페이지에 대한 문자 인코딩,콘텐츠 유형을 설정하도록 response내장 객체의 메소드를 작성
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		//폼 페이지에서 전송된 요청 파라미터와 web.xml파일에 설정된 매개변수의 값을 비교하여 메시지를 출력하도록 작성
		if(id.equals(param1) && passwd.equals(param2))
			message = "로그인 성공했습니다.";
		else
			message = "로그인 실패했습니다.";
		
		writer.println(message);
		//연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain 객체 타입의 doFilter()메소드 작성
		filterChain.doFilter(request, response);
	}
	//필터를 종료하기 전에 호출하도록 destroy()메소드 작성
	@Override
	public void destroy() {
		System.out.println("Filter02 해제...");
	}
}


