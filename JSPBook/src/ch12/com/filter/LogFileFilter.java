package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


public class LogFileFilter implements Filter{

	PrintWriter writer;
	//필터를 초기화
	public void init(FilterConfig filterConfig) throws ServletException {
		//web.xml파일의 <inin-param>요소에 설정된 매개변수 filename 값을 전달 받는 getInitParameter()메소드
		String filename = filterConfig.getInitParameter("filename");
		//매개변수 filename이 없으면 예외처리
		if(filename==null) throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		try {
			writer= new PrintWriter(new FileWriter(filename, true), true);
		}catch(IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다");
		}
	}
	//필터를 리소스에 적용하는 doFilter()메소드	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		//현재 일시를 출력하도록 사용자 정의 메소드 getCurrentTime()메소드 호출
		writer.printf("현재일시 : %s %n" , getCurrentTime());
		//클라이언트 주소를 출력하는 getRemoteAddr()메소드 작성
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		//연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 doFilter()메소드 작성
		filterChain.doFilter(request, response);
		//응답 웹 페이지에 대한 콘텐츠 유형 설정 getContentType()메소드 작성
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
		writer.println("-------------------------------");
	}
	//필터를 종료하기 전에 호출하도록 destroy()메소드 작성
	public void destroy() {
		writer.close();
	}
	//현재 시간을 얻어오는 사용자 정의 메소드 getCurrentTime()작성
	private String getCurrentTime(){
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}

