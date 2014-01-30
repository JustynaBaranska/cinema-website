

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.ConfigManager;

import services.MovieService;
import data.models.Movie;

/**
 * Servlet implementation class GetMovies
 */
@WebServlet("/GetMovies")
public class GetMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetMovies() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MovieService movieService = new MovieService(new ConfigManager().GetConnectionString("default"));
		List<Movie> movies = movieService.GetAllMovies();
		
		response.setContentType("text/xml;charset=UTF-8");
		PrintWriter output = response.getWriter();
		output.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		output.append("<movies>");
		
		for(Movie m : movies)
		{
			output.append("<movie>");
				output.append("<title>" + m.GetTitle() + "</title>");
				output.append("<summary>" + m.GetShortDescription() + "</summary>");
				output.append("<is3D>" + m.GetIs3D() + "</is3D>");
			output.append("</movie>");
		}
		
		
		output.append("</movies>");
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
