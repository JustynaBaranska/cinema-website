package web;

import java.util.ArrayList;
import java.util.List;

import config.ConfigManager;
import data.models.Movie;
import data.models.News;
import services.MovieService;
import web.viewmodels.HomepageModel;
import web.viewmodels.MoviepageModel;

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
		
		List<News> news = new ArrayList<News>();
		
		return new HomepageModel(movies, news);
	}

	
	public MoviepageModel GetMoviepageModel(int id)
	{
		MovieService movieService = new MovieService(config.GetConnectionString("default"));
		Movie movie = movieService.GetMovie(id);
		return new MoviepageModel(movie);
	}
	
}
