


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection 
{
	
private Connection connection;
	
	//Constructor to establish the connection
	public DBConnection(String URL, String user, String pwd) throws ClassNotFoundException, SQLException 
	{
		//Register Driver
		Class.forName("com.mysql.jdbc.Driver"); // Class.forName will invoke the Java's Class Loader - Loading the JDBC Driver.
		
		//Get Connection
		this.connection = DriverManager.getConnection(URL,user,pwd);// Driver Manager actually Creates the Connection to the Database.		
	}
	
	//To retrieve the connection whenever we want to use it.
	public Connection getDBConnection()
	{
		return this.connection;
	}
	
	//Close the Connection
	public void closeConnection() throws SQLException
	{
		if(this.connection !=null) // Check whether there is an active connection.
		{
			this.connection.close();
		}
	}
	

}
