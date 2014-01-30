package web.viewmodels;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import data.models.Movie;

public class PaymentPageModel {

	private Movie _movie;
	private Date _datetime;
	private int _numGoing;
	private String _summary;
	private String _total;
	private List<String> _paymentOptions;
	private String _firstname;
	private String _surname;
	private String _email;
	private String _phonenumber;

	public PaymentPageModel(Movie movie, Date datetime, int numGoing,
			String summary, String total, List<String> paymentOptions, String firstname, String surname, String email, String phonenumber) {
		_movie = movie;
		_datetime = datetime;
		_numGoing = numGoing;
		_summary = summary;
		_total = total;
		_paymentOptions = paymentOptions;
		_firstname = firstname;
		_surname = surname;
		_email = email;
		_phonenumber = phonenumber;
		
	}
	
	public Movie GetMovie()
	{
		return _movie;
	}
	
	public String GetDateAndTime()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    	String movieTime = sdf.format(_datetime);
    	return movieTime;
	}
	
	public int GetNumberOfPeople()
	{
		return _numGoing;
	}
	
	public String GetTicketSummary()
	{
		return _summary;
	}
	
	public String GetTotalPrice()
	{
		return _total;
	}
	
	public List<String> GetPaymentOptions()
	{
		return _paymentOptions;
	}

	public String GetFirstName()
	{
		return _firstname;
	}
	
	public String GetSurname()
	{
		return _surname;
	}
	
	public String GetEmail()
	{
		return _email;
	}
	
	public String GetTelephone()
	{
		return _phonenumber;
	}
	
	
	
}
