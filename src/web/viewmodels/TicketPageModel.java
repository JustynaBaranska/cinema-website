package web.viewmodels;

import java.text.SimpleDateFormat;
import java.util.Date;

import data.models.Movie;

public class TicketPageModel {
	private Movie _movie;
	private Date _datetime;

	public TicketPageModel(Movie movie, Date datetime)
	{
		_movie = movie;
		_datetime = datetime;
	}
	
	public String GetMovieTitle()
	{
		return _movie.GetTitle();
	}
	
	public String GetMovieId()
	{
		return Integer.toString(_movie.GetId());
	}
	
	public String GetDateAndTime()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    	String movieTime = sdf.format(_datetime);
    	return movieTime;
	}
}
