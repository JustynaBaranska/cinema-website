package web;

import java.util.ArrayList;
import java.util.List;

import config.ConfigManager;
import data.models.Movie;
import data.models.News;
import services.MovieService;
import services.NewsService;
import web.viewmodels.HomepageModel;

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
	
}
