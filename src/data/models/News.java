package data.models;

import java.util.Date;

public class News {
	private int _id; 
	private String _title; 
	private String _newsText;
	private Date _addedDate;
	
	
	public News(int id, String title, String newsText, Date addedDate)
	{
		_id = id;
		_title = title;
		_newsText = newsText;
		_addedDate = addedDate;
	}
	public String GetNewsTitle()
	{
		return _title;	
	}
	public String GetNewsText()
	{
		return _newsText;	
	}
	public int GetId()
	{
		return _id;	
	}
}
