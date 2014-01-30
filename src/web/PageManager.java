package web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import config.ConfigManager;
import data.models.Movie;
import data.models.News;
import services.MovieService;
import services.NewsService;
import web.viewmodels.BookingPageModel;
import web.viewmodels.DetailsPageModel;
import web.viewmodels.HomepageModel;
import web.viewmodels.MoviepageModel;
import web.viewmodels.PaymentPageModel;
import web.viewmodels.TicketPageModel;

public class PageManager {

	ConfigManager config;
	public PageManager()
	{
		config = new ConfigManager();
	}
	
	public HomepageModel GetHomepageModel()
	{
		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		List<Movie> movies = movieService.GetAllMovies();
		
		NewsService newsService = new NewsService(config.GetConnectionString("default"));
		News news = newsService.GetLatestNews();
		
		return new HomepageModel(movies, news);
	}

	
	public MoviepageModel GetMoviepageModel(int id)
	{
		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		Movie movie = movieService.GetMovie(id);
		return new MoviepageModel(movie);
	}
	
	public BookingPageModel GetBookingPageModel()
	{
		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		List<Movie> movies = movieService.GetAllMovies();
		
		return new BookingPageModel(movies);
	}
	
	public TicketPageModel GetTicketPageModel(int movieId, Date datetime)
	{

		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		Movie movie = movieService.GetMovie(movieId);
		
		return new TicketPageModel(movie,datetime);
	}
	
	public DetailsPageModel GetDetailsPageModel(int movieId, 
			int ticketsAdult,
			int ticketsChild,
			int ticketsSenior,
			int ticketsStudent,
			int ticketsFamily,        		
    		Date datetime)
	{
		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		Movie movie = movieService.GetMovie(movieId);
		
		int numPeopleGoing = 0;
		numPeopleGoing += ticketsAdult;
		numPeopleGoing += ticketsChild;
		numPeopleGoing += ticketsSenior;
		numPeopleGoing += ticketsStudent;
		numPeopleGoing += ticketsFamily * 4;
		
		
		List<String> ticketDetails = new ArrayList<String>();
		if(ticketsAdult > 0)
		{
			ticketDetails.add(ticketsAdult + " x Adult Tickets");
		}
		
		if(ticketsChild > 0)
		{
			ticketDetails.add(ticketsChild + " x Child Tickets");
		}
		
		if(ticketsSenior > 0)
		{
			ticketDetails.add(ticketsSenior + " x Senior Tickets");
		}
		
		if(ticketsStudent > 0)
		{
			ticketDetails.add(ticketsStudent + " x Student Tickets");
		}
		
		if(ticketsFamily > 0)
		{
			ticketDetails.add(ticketsFamily + " x Family Tickets");
		}
		
		
		double totalPrice = 0; 
		totalPrice += ticketsAdult * 6.20;
		totalPrice += ticketsChild * 5.80;
		totalPrice += ticketsSenior * 5.80;
		totalPrice += ticketsStudent * 5.80;
		totalPrice += ticketsFamily * 22.80;
		
		return new DetailsPageModel(movie,datetime,numPeopleGoing,ticketDetails,totalPrice);
	}
	
	public PaymentPageModel GetPaymentPageModel(HttpServletRequest request)
	{
		PaymentPageModel model = null;
		if(request.getParameter("numgoing") != null && 
		request.getParameter("total") != null && 
		request.getParameter("summary") != null && 
		request.getParameter("movie") != null && 
		request.getParameter("datetime") != null && 
		request.getParameter("firstname") != null &&
		request.getParameter("surname") != null &&
		request.getParameter("email") != null &&
		request.getParameter("phonenumber") != null) 
		    	{
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
		    	String phonenumber = request.getParameter("phonenumber");
		    	 
		    	MovieService movieService = new MovieService(config.GetConnectionString("default"));
				Movie movie = movieService.GetMovie(movieId);
		    	
				List<String> paymentOptions = new ArrayList<String>();
				
				paymentOptions.add("Visa");
				paymentOptions.add("MasterCard");
				paymentOptions.add("Delta");
				paymentOptions.add("Maestro");
				paymentOptions.add("American Express");
				
		    	model = new PaymentPageModel(movie, datetime, numGoing, summary, total, paymentOptions, firstname, surname, email, phonenumber);
		        
		    } 
		return model;
		
	}
	
}
