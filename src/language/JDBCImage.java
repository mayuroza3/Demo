package language;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class JDBCImage {

	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testingdb","root", "");
		Statement stmt=conn.createStatement();
		String sql="CREATE TABLE IF NOT EXISTS`image` ("+
  "`id` varchar(45) DEFAULT NULL,"+
  "`size` int(11) DEFAULT NULL,"+
  "`image` longblob)";
		
		stmt.executeUpdate(sql);
		File imgfile = new File("F:/Eclipse Mars 2016/ORMTool/Images/1.jpg");
			  
		FileInputStream fin = new FileInputStream(imgfile);		
	
		PreparedStatement ps=conn.prepareStatement("insert into image values(?,?,?)");
		ps.setString(1, "test");
		ps.setInt(2, 3);
		ps.setBinaryStream(3, (InputStream)fin,(int)imgfile.length());
		ps.executeUpdate();
		ResultSet rs = stmt.executeQuery("select image from image");
		int i = 0;
		while (rs.next()) {
			InputStream in = (InputStream) rs.getBinaryStream(1);
			OutputStream f = new FileOutputStream(new File("test"+i+".jpg"));
			i++;
			int c = 0;
			while ((c = in.read()) > -1) {
				f.write(c);
			}
			f.close();
			in.close();
		}		
		System.out.println("success");
		conn.close();
	}

}
