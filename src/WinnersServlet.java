import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WinnersServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(request, response);s
		
		int arr[] = new int[5];
		Random random = new Random();
		
		for(int cnt=0; cnt<arr.length; cnt++)
			arr[cnt] = random.nextInt(45)+1;
		request.setAttribute("ARR", arr);
		
		RequestDispatcher rd = request.getRequestDispatcher("Winners.jsp");
		rd.forward(request, response);
		
	}
	

}
