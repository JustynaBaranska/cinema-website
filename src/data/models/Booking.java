package data.models;

import java.util.Date;

public class Booking {

	private int _movieId;
	private String _total;
	private String _summary;
	private int _numGoing;
	private Date _datetime;
	private String _firstname;
	private String _surname;
	private String _email;
	private String _phonenumber;
	private String _cardType;
	private String _cardName;
	private String _cardNumber;
	private String _expiryMonth;
	private String _expiryYear;
	private String _issueNumber;
	private String _securityCode;

	public Booking(int movieId, String total, String summary, int numGoing,
			Date datetime, String firstname, String surname, String email,
			String phonenumber, String cardType, String cardName,
			String cardNumber, String expiryMonth, String expiryYear,
			String issueNumber, String securityCode) {
		// TODO Auto-generated constructor stub
		_movieId = movieId;
		_total = total;
		_summary = summary;		
		_numGoing = numGoing;
		_datetime = datetime;
		_firstname = firstname;
		_surname = surname;
		_email = email;
		_phonenumber = phonenumber;
		_cardType = cardType;
		_cardName = cardName;
		_cardNumber = cardNumber;
		_expiryMonth = expiryMonth;
		_expiryYear = expiryYear;
		_issueNumber = issueNumber;
		_securityCode = securityCode;
	}

	public int GetMovieId() {
		return _movieId;
	}

	public String GetTotal() {
		return _total;
	}

	public String GetSummary() {
		return _summary;
	}

	public int GetNumGoing() {
		return _numGoing;
	}

	public java.sql.Date GetDateTime() {
		return new java.sql.Date(_datetime.getTime());
	}

	public String GetFirstname() {
		// TODO Auto-generated method stub
		return _firstname;
	}

	public String GetEmail() {
		// TODO Auto-generated method stub
		return _email;
	}

	public String GetSurname() {
		// TODO Auto-generated method stub
		return _surname;
	}

	public String GetPhoneNumber() {
		// TODO Auto-generated method stub
		return _phonenumber;
	}

	public String GetCardType() {
		// TODO Auto-generated method stub
		return _cardType;
	}

	public String GetCardName() {
		// TODO Auto-generated method stub
		return _cardName;
	}

	public String GetCardNumber() {
		return _cardNumber;
	}

	public String GetExpiryMonth() {
		// TODO Auto-generated method stub
		return _expiryMonth;
	}

	public String GetExpiryYear() {
		// TODO Auto-generated method stub
		return _expiryYear;
	}

	public String GetIssueNumber() {
		// TODO Auto-generated method stub
		return _issueNumber;
	}

	public String GetSecurityCode() {
		// TODO Auto-generated method stub
		return _securityCode;
	}

}
