package web.viewmodels;

import java.util.ArrayList;
import java.util.List;

import data.models.Movie;
import data.models.News;

public class HomepageModel {

	private List<Movie> _movies;
	private News _news;
	
	public HomepageModel(List<Movie> movies, News news)
	{
		_movies = movies;
		_news = news;
	}
	
	
	public List<Movie> GetScrollerMovies()
	{
		List<Movie> scrollers = new ArrayList<Movie>();
		
		for(Movie m : _movies)
		{
			if(m.GetShowPromoOnHomepage())
			{
				scrollers.add(m);
			}
		}
		
		return scrollers;
	}
	
	public Movie GetOpeningThisWeek()
	{
		Movie openingThisWeek = null;
		
		for(Movie m : _movies)
		{
			if(m.GetShowOpeningThisWeek())
			{
				openingThisWeek = m;
				break;
			}
		}

		return openingThisWeek;
	}
	
	public Movie GetFilmOfTheMonth()
	{
		Movie filmOfTheMonth = null;
		
		for(Movie m : _movies)
		{
			if(m.GetShowFilmOfTheMonth())
			{
				filmOfTheMonth = m;
				break;
			}
		}

		return filmOfTheMonth;
	}
	public List<Movie> GetMostWatchedTrailers()
	{
		List<Movie> trailers = new ArrayList<Movie>();
				
		for(Movie m : _movies)
		{
			trailers.add(m);	
		}
		
		return trailers;
	}
	
	public News GetLatestNews()
	{
		return _news;
	}
	
}
