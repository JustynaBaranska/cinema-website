package data.models;

import java.util.Date;

public class Movie {
	
	
	private int _id; 
	private String _title; 
	private String _shortDescription; 
	private String _fullDescription;
	private String _promoImage; 
	private String _smallImage; 
	private String _thumbnailImage; 
	private Date _openingDate;
	private boolean _showPromoOnHomepage; 
	private boolean _showOpeningThisWeek; 
	private boolean _showFilmOfTheMonth;
	private String _trailerYoutubeId; 
	private int _trailerViews; 
	private boolean _is3D;
	
	public Movie(int id, String title, String shortDescription, String fullDescription,
			String promoImage, String smallImage, String thumbnailImage, Date openingDate,
			boolean showPromoOnHomepage, boolean showOpeningThisWeek, boolean showFilmOfTheMonth,
			String trailerYoutubeId, int trailerViews, boolean is3D)
	{
		 _id =  id;
		  _title =  title;
		  _shortDescription = shortDescription;  
		  _fullDescription = fullDescription;
		  _promoImage =  promoImage;
		  _smallImage =  smallImage;
		  _thumbnailImage =  thumbnailImage;
		 _openingDate = openingDate;
		  _showPromoOnHomepage =  showPromoOnHomepage;
		  _showOpeningThisWeek =  showOpeningThisWeek;
		  _showFilmOfTheMonth = showFilmOfTheMonth;
		  _trailerYoutubeId =  trailerYoutubeId;
		  _trailerViews =  trailerViews;
		  _is3D = is3D;
	}
	
	
	
	public String GetPromoImage()
	{
		return _promoImage;
	}
	
	public String GetSmallImage()
	{
		return _smallImage;
	}
	
	public String GetTitle()
	{
		return _title;
	}
	
	public String GetShortDescription()
	{
		return _shortDescription;
	}
	
	public String GetFullDescription()
	{
		return _fullDescription;
	}
	
	
	public String GetThumbnailImage()
	{
		return _thumbnailImage;
	}
	
	public boolean GetShowPromoOnHomepage()
	{
		return _showPromoOnHomepage;
	}
	
	public boolean GetShowOpeningThisWeek()
	{
		return _showOpeningThisWeek;
	}
	
	public boolean GetShowFilmOfTheMonth()
	{
		return _showFilmOfTheMonth;
	}
	
	public Date GetOpeningDate()
	{
		return _openingDate;
	}
	
	public int GetId()
	{
		return _id;
	}
	
	
}
