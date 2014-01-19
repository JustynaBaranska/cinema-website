package services;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import data.models.Movie;
import data.models.News;

public class NewsService extends BaseService {

	public NewsService(String connectionString) {
		super(connectionString);
		
	}
	
	public News GetNews(int id)
	{
		
		return null;
	}
	
	public News GetLatestNews()
	{
		News result = null;
		String commandText = "SELECT * FROM news ORDER BY date_added DESC LIMIT 1";
		Connection conn = null;
		PreparedStatement cmd = null;
		ResultSet reader = null;
		
			try {
				
				conn = GetConnection();
				cmd = conn.prepareStatement(commandText);
				reader = cmd.executeQuery();
				
				while (reader.next()) {
					
					int id = reader.getInt("idnews");
					String title = reader.getString("news_title");
					String newsText = reader.getString("news_text");
					Date addedDate = reader.getDate("date_added");
										 
					result = new News(id, title, newsText, addedDate);
					break;
				}
				
			} catch (SQLException e) {
				AddMessage("error: " + e.getMessage());
				e.printStackTrace();
			} 
			finally
			{
				CloseReader(reader);
				CloseCommand(cmd);
				CloseConnection(conn);
			}
				
		return result;
		
	}
	

}
