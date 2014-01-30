package web.viewmodels;

import java.util.List;

import data.models.Movie;

public class BookingPageModel {

	private List<Movie> _movies;

	public BookingPageModel(List<Movie> movies) {
		_movies = movies;
	}
	
	public List<Movie> GetMovies()
	{
		return _movies;
	}

}
