package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import data.models.Movie;

public class MovieService extends BaseService {

	public MovieService(String connectionString) {
		super(connectionString);
	}

	public Movie GetMovie(int id)
	{
		
		return null;
	}
	
	public List<Movie> GetAllMovies()
	{
		List<Movie> result = new ArrayList<Movie>();
		String commandText = "SELECT * FROM Movies";
		Connection conn = null;
		PreparedStatement cmd = null;
		ResultSet reader = null;
		
			try {
				
				conn = GetConnection();
				cmd = conn.prepareStatement(commandText);
				reader = cmd.executeQuery();
				
				while (reader.next()) {
					
					int id = reader.getInt("Id");
					String title = reader.getString("title");
					String shortDescription = reader.getString("shortDescription");
					String fullDescription = reader.getString("fullDescription");
					String promoImage = reader.getString("promoImage");
					String smallImage = reader.getString("smallImage");
					String thumbnailImage = reader.getString("thumbnailImage");
					Date openingDate = reader.getDate("openingDate");
					boolean showPromoOnHomepage = reader.getBoolean("showPromoOnHomepage");
					boolean showOpeningThisWeek = reader.getBoolean("showOpeningThisWeek");
					boolean showFilmOfTheMonth = reader.getBoolean("showFilmOfTheMonth");
					String trailerYoutubeId = reader.getString("trailerYoutubeId");
					int trailerViews = reader.getInt("trailerViews");
					boolean is3D = reader.getBoolean("is3D");
					 
					Movie m = new Movie(id, title, shortDescription, fullDescription,
							promoImage, smallImage, thumbnailImage, openingDate,
							showPromoOnHomepage, showOpeningThisWeek, showFilmOfTheMonth,
							trailerYoutubeId, trailerViews, is3D);
					result.add(m);
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
