package chap06;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GreetingServlet extends HttpServlet {
	private PrintWriter logFile;

	public void init() throws ServletException {
		String fileName = getInitParameter("FILE_NAME");
		
		try {
//			logFile = new PrintWriter(new FileWriter("c:\\data\\log.txt", true));
			logFile = new PrintWriter(new FileWriter(fileName, true));
			
		} catch (IOException e) {
			throw new ServletException();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("NAME");
		String greeting = "안녕하세요, " + name + "님.";
		if (logFile != null) {
			GregorianCalendar now = new GregorianCalendar();
			logFile.printf("%TF %TT  - %s %n", now, now, name);
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>인사하기</title></head>");
		out.println("<body>");
		out.println(greeting);
		out.println("</body>");
		out.println("</html>");
	}

	public void destroy() {
		if (logFile != null)
			logFile.close();
	}

}
