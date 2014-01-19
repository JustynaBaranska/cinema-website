package web.viewmodels;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import data.models.Movie;

public class MoviepageModel {
	private Movie _movie;

	public MoviepageModel(Movie movie)
	{
		_movie = movie;
	}
	
	public String GetTitle()
	{
		return _movie.GetTitle();
	}
	
	public String GetImage()
	{
		return _movie.GetSmallImage();
	}
	
	public String GetOpeningDate()
	{
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		return df.format(_movie.GetOpeningDate());
	}
	
	public String GetSynopsis()
	{
		return _movie.GetFullDescription();
	}
}
