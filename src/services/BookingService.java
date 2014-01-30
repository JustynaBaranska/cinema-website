package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import data.models.Booking;
import data.models.Movie;

public class BookingService extends BaseService {

	public BookingService(String connectionString) {
		super(connectionString);
		
	}
	
	public boolean BookTickets(Booking booking)
	{
		boolean ticketsBooked = false;
		String commandText = "INSERT INTO Bookings (movieId,total,summary,numGoing,datetime,firstname,surname,email,phonenumber,cardType,cardName,cardNumber,expiryMonth,expiryYear," +
							"issueNumber,securityCode) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement cmd = null;
		
			try {
				
				conn = GetConnection();
				cmd = conn.prepareStatement(commandText);
				cmd.setInt(1, booking.GetMovieId());
				cmd.setString(2, booking.GetTotal());
				cmd.setString(3, booking.GetSummary()); 
				cmd.setInt(4, booking.GetNumGoing()); 
				cmd.setDate(5,booking.GetDateTime()); 
				cmd.setString(6, booking.GetFirstname()); 
				cmd.setString(7, booking.GetSurname()); 
				cmd.setString(8, booking.GetEmail()); 
				cmd.setString(9, booking.GetPhoneNumber()); 
				cmd.setString(10, booking.GetCardType()); 
				cmd.setString(11, booking.GetCardName()); 
				cmd.setString(12, booking.GetCardNumber()); 
				cmd.setString(13, booking.GetExpiryMonth()); 
				cmd.setString(14, booking.GetExpiryYear()); 
				cmd.setString(15, booking.GetIssueNumber()); 
				cmd.setString(16, booking.GetSecurityCode()); 
				
				cmd.executeUpdate();
				ticketsBooked = true;
				
			} catch (SQLException e) {
				AddMessage("error: " + e.getMessage());
				e.printStackTrace();
			} 
			finally
			{
				CloseCommand(cmd);
				CloseConnection(conn);
			}
				
		
		return ticketsBooked;
	}

}
