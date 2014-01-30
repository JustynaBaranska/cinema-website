

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import services.BookingService;
import services.MovieService;
import web.viewmodels.PaymentPageModel;

import config.ConfigManager;
import data.models.Booking;
import data.models.Movie;

/**
 * Servlet implementation class ProcessPayment
 */
@WebServlet("/ProcessPayment")
public class ProcessPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessPayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
				    	
				    	int movieId = Integer.parseInt(request.getParameter("movie"));
				    	String total = request.getParameter("total");
				    	String summary = request.getParameter("summary");
				    	int numGoing = Integer.parseInt(request.getParameter("numgoing"));
				    	Date datetime = null;
				    	
				    	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm");
				    	try {
							datetime = sdf.parse(request.getParameter("datetime"));
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				    	
				    	String firstname = request.getParameter("firstname");
				    	String surname = request.getParameter("surname");
				    	String email = request.getParameter("email");
				    	String phonenumber = request.getParameter("telephone");
				    	
				    	
				    	
				    	String cardType = request.getParameter("cardType");
				    	String cardName = request.getParameter("cardName");
				    	String cardNumber = request.getParameter("cardNumber");
				    	String expiryMonth = request.getParameter("expiryMonth");
				    	String expiryYear = request.getParameter("expiryYear");
				    	String issueNumber = request.getParameter("issueNumber");
				    	String securityCode = request.getParameter("securityCode");
				    	
				    	 
				    	
						
						Booking booking = new Booking(
								movieId,
								total,
								summary,
								numGoing,
								datetime,
								firstname,
								surname,
								email,
								phonenumber,
								cardType,
								cardName,
								cardNumber,
								expiryMonth,
								expiryYear,
								issueNumber,
								securityCode);
						
						
				        
				     
		
		ConfigManager config = new ConfigManager();
		BookingService bookingService = new BookingService(config.GetConnectionString("default"));
		if(bookingService.BookTickets(booking))
		{
			response.sendRedirect("Thanks.jsp");
		}
		else
		{
			
			response.sendRedirect("BookingProblem.jsp");
		}
	}

}
