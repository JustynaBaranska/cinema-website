package services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaseService {
	private String[] _connItems;
	private String _connectionString;
	private List<String> _messages;
	
	public BaseService(String connectionString)
	{
		_connectionString = connectionString;
		_connItems = connectionString.split(";");
		_messages = new ArrayList<String>();
	}
	
	protected Connection GetConnection()
	{
		Connection conn = null;
		if(ValidConnectionProperties())
		{
		String host = _connItems[0];
		String user = _connItems[1];
		String pass = _connItems[2];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(host,user,pass);
		} catch (ClassNotFoundException e) {
			_messages.add(e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			_messages.add(e.getMessage());
			e.printStackTrace();
		}
		
		}
		else
		{
			_messages.add("Incorrect number of connection values");
		}
		return conn;
	}
	
	protected void AddMessage(String msg)
	{
		_messages.add(msg);
	}
	
	public List<String> GetMessages()
	{
		return _messages;
	}
	
	private boolean ValidConnectionProperties()
	{
		boolean valid = false;
		if(_connItems.length == 3)
		{
			valid = true;
		}
		return valid;
	}
	
	protected void CloseReader(ResultSet reader)
	{
		if(reader != null)
		{
			try {
				reader.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	protected void CloseCommand(PreparedStatement cmd)
	{
		if(cmd != null)
		{
			try {
				cmd.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	protected void CloseConnection(Connection conn)
	{
		if(conn != null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
}
