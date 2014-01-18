package config;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class ConfigManager {
	
	String configFile;
	public ConfigManager()
	{
		configFile = "config.properties";
	}

	public String GetConnectionString(String key)
	{
		//Create();
		String connectionString = "";
    	InputStream input = null;
 
    	try {
 
    		input = ConfigManager.class.getClassLoader().getResourceAsStream(configFile);
    		if(input==null){
    		    return "";
    		}
    		Properties prop = new Properties();
    		prop.load(input);
    		connectionString = prop.getProperty("connectionstring." + key);

    	} catch (IOException ex) {
    		ex.printStackTrace();
        } finally{
        	if(input!=null){
        		try {
				input.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        	}
        }
    	
    	return connectionString;
	}
	
	public void Create()
	{
		Properties prop = new Properties();
		OutputStream output = null;
	 
		try {
	 
			output = new FileOutputStream("config.properties");
	 
			// set the properties value
			prop.setProperty("connectionstring.default", "jdbc:mysql://localhost/javatest;javauser;m1lkybar");

			// save properties to project root folder
			prop.store(output, null);
	 
		} catch (IOException io) {
			io.printStackTrace();
		} finally {
			if (output != null) {
				try {
					output.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
	 
		}
	}
	
}
