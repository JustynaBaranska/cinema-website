package web.viewmodels;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import data.models.Movie;

public class DetailsPageModel {

	private Movie _movie;
	private Date _datetime;
	private int _numPeopleGoing;
	private List<String> _ticketDetails;
	private double _totalPrice;

	public DetailsPageModel(Movie movie, Date datetime, int numPeopleGoing,
			List<String> ticketDetails, double totalPrice) {
		_movie = movie;
		_datetime = datetime;
		_numPeopleGoing = numPeopleGoing;
		_ticketDetails = ticketDetails;
		_totalPrice = totalPrice;
	}
	
	
	public Movie GetMovie()
	{
		return _movie;
	}
	
	public String GetDateAndTime()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    	String movieTime = sdf.format(_datetime);
    	return movieTime;
	}
	
	public int GetNumberOfPeople()
	{
		return _numPeopleGoing;
	}
	
	public List<String> GetTicketDetails()
	{
		return _ticketDetails;
	}
	
	public String GetTotalPrice()
	{
		return "£" + _totalPrice;
	}
	
	public String GetTicketDetailsSummary()
	{
		String summary = "";
		for(String s : _ticketDetails)
		{
			summary += s + "\n";
		}
		
		return summary;
	}

}
