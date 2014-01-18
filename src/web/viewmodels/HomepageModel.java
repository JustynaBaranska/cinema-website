package web.viewmodels;

import java.util.ArrayList;
import java.util.List;

import data.models.Movie;
import data.models.News;

public class HomepageModel {

	public List<Movie> GetScrollerMovies()
	{
		List<Movie> scrollers = new ArrayList<Movie>();
		
		scrollers.add(new Movie());
		scrollers.add(new Movie());
		
		return scrollers;
	}
	
	public Movie GetOpeningThisWeek()
	{
		return new Movie();
	}
	
	public Movie GetDidYouKnow()
	{
		return new Movie();
	}
	public List<Movie> GetMostWatchedTrailers()
	{
List<Movie> trailers = new ArrayList<Movie>();
		
trailers.add(new Movie());
trailers.add(new Movie());
trailers.add(new Movie());
trailers.add(new Movie());
		
		return trailers;
	}
	
	public News GetLatestNews()
	{
		return new News();
	}
	
}
