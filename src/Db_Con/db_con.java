//DAO

package Db_Con;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import myPrograms.AdminGeSe;
import myPrograms.FlightsListGeSe;
import myPrograms.UserGeSe;

public class db_con {
	private Connection con;

	private String url;
	private String uname;
	private String pwd;
	
	public db_con(String url, String uname, String pwd) {
        this.url = url;
        this.uname = uname;
        this.pwd = pwd;
    }
	public void initializeDatabase() throws SQLException{
			
			if (con == null || con.isClosed()) {
			try{
				Class.forName("com.mysql.jdbc.Driver");
			}catch(ClassNotFoundException e){
				throw new SQLException(e);
			}
				con = DriverManager.getConnection(url, uname, pwd);
				System.out.println("Connected");
			}
			
	}	
			
	
	protected void disconnect() throws SQLException {
        if (con != null && !con.isClosed()) {
            con.close();
        }
        
	}
	
	@SuppressWarnings("null")
	 
	
	//search flights based on from, to, date
	 public List<FlightsListGeSe> getFlight(String flt_from, String flt_to, String dt) throws SQLException {
		 List<FlightsListGeSe> listFlt = new ArrayList<>();
		 //Connection con1=null;
		 //Statement stmt1=null;
		 PreparedStatement prst=null;
		 ResultSet rs=null;
	     String sql = "SELECT * FROM flights WHERE flight_from=? and flight_to=? and date=?";
	     //String count_query1 = "SELECT count(*) FROM flights WHERE flight_from=? and flight_to=? and date=?";
	         
	     initializeDatabase();
	     	//stmt1 = con.createStatement();
	        prst = con.prepareStatement(sql);
	        prst.setString(1, flt_from);
	        prst.setString(2, flt_to);
	        prst.setString(3, dt);
	         
	        rs = prst.executeQuery();
	         
	        while (rs.next()) {
	             String name = rs.getString("airline_name");
	             String pri = rs.getString("price");
	             String flt_num = rs.getString("flight_number");
	             //String flt_from = rs.getString("flight_from");
	             //String flt_to = rs.getString("flight_to");
	             String dep = rs.getString("departure_time");
	             String arr = rs.getString("arrival_time");
	             int tot_se=rs.getInt("total_seats");
	             int b_se=rs.getInt("booked_seats");
	             //String dt = rs.getString("date");
	             int available=tot_se-b_se;
	             String a_seats = Integer.toString(available);
	             
	             FlightsListGeSe fl = new FlightsListGeSe(name,pri,flt_num,flt_from,flt_to,dep,arr,dt,a_seats);
	             listFlt.add(fl);
	             System.out.println(name+" : "+pri+ " "+ flt_num);
	             
	             
			 }
	        rs.last();
            int count = rs.getRow();
            System.out.println("Rows = "+count);
	             
	        rs.close();
	        prst.close();
	         
	        //disconnect();
	         
	        return listFlt;
	    }


	//User email pwd
	public UserGeSe UserLog(String u_email, String pwd) throws SQLException {
		UserGeSe user = null;
		PreparedStatement prst=null;
		ResultSet rs=null;
		
		String query1 = "Select * from user where email=? and password=?";
		initializeDatabase();
		
     	//stmt1 = con.createStatement();
        prst = con.prepareStatement(query1);
        prst.setString(1, u_email);
        prst.setString(2, pwd);
        rs = prst.executeQuery();
        
        if (rs.next()) {
        	String nam = rs.getString("name");
        	String phn = rs.getString("phno");
        	String address = rs.getString("adno");

        	user = new UserGeSe(u_email,pwd,nam,phn,address);
        	
        	System.out.println(u_email+" : "+pwd);
        	
            
           	}
        
        //rs.last();
        int count = rs.getRow();
        System.out.println("Users = "+count);
        rs.close();
        prst.close();
         
        //disconnect();
        return user;
        
    }
	
	//Flight details based on flight number
	public FlightsListGeSe Book_Fl(String flt_num) throws SQLException {
		System.out.println("Flight Number = "+flt_num);
		FlightsListGeSe flt_n = null;
		PreparedStatement prst=null;
		ResultSet rs=null;
		
		String query1 = "Select * from flights where flight_number=?";
		initializeDatabase();
		
     	//stmt1 = con.createStatement();
        prst = con.prepareStatement(query1);
        prst.setString(1, flt_num);
        rs = prst.executeQuery();
        
        if (rs.next()) {
        	String name = rs.getString("airline_name");
            String pri = rs.getString("price");
            //String flt_num = rs.getString("flight_number");
            String flt_from = rs.getString("flight_from");
            String flt_to = rs.getString("flight_to");
            String dep = rs.getString("departure_time");
            String arr = rs.getString("arrival_time");
            int tot_se=rs.getInt("total_seats");
            int b_se=rs.getInt("booked_seats");
            String dt = rs.getString("date");
            int available=tot_se-b_se;
            String a_seats = Integer.toString(available);
        	
            
            flt_n = new FlightsListGeSe(name,pri,flt_num,flt_from,flt_to,dep,arr,dt,tot_se,b_se,a_seats);
        	
        	System.out.println("Flight Number : "+flt_num);
        	
            
           	}
            
        
        //rs.last();
        int count = rs.getRow();
        System.out.println("Flights = "+count);
        rs.close();
        prst.close();
         
        //disconnect();
        return flt_n;
        
    }
	
	/*public FlightsListGeSe Update_Trv(String flt_num) throws SQLException {
		FlightsListGeSe flt_n = null;
		PreparedStatement prst=null;
		ResultSet rs=null;
		
		String query1 = "Select * from flights where flight_number=?";
		initializeDatabase();
		
     	//stmt1 = con.createStatement();
        prst = con.prepareStatement(query1);
        prst.setString(1, flt_num);
        rs = prst.executeQuery();
        
        if (rs.next()) {
            int tot_se=rs.getInt("total_seats");
            int boo_se=rs.getInt("booked_seats");
            int available=tot_se-b_se;
            String a_seats = Integer.toString(available);
        	
            
            flt_n = new FlightsListGeSe(tot_se,b_se,a_seats);
        	
        	
            
           	}
            
        
        //rs.last();
        int count = rs.getRow();
        System.out.println("Flights = "+count);
        rs.close();
        prst.close();
         
        //disconnect();
        return flt_n;
        
    }*/
	
	
	
	public boolean Updt_Trvlrs(FlightsListGeSe tvlrs) throws SQLException{
		PreparedStatement prst=null;
		
		String query1 = "UPDATE flights SET booked_seats=? where flight_number=?";
		initializeDatabase();
		
     	//stmt1 = con.createStatement();
        prst = con.prepareStatement(query1);
        prst.setInt(1, tvlrs.getB_se());
        prst.setString(2,tvlrs.getFlt_num());
        Boolean rs = prst.executeUpdate() > 0;
        
        prst.close();
        disconnect();
        
        return rs;
	}
	
	
	//public boolean Enter_User(UserGeSe user_details)throws SQLException {
	public boolean Enter_User(String usr_email, String usr_pwd, String usr_name, String usr_phn, String usr_addrs)
		throws SQLException {
		PreparedStatement prst=null;
		//Statement st = null;
		ResultSet rs1= null;
		boolean rs;
		
		String query1 = "Select * from user where email=?";
		String query2 = "Insert into user values(?,?,?,?,?)";
		initializeDatabase();
		
        prst = con.prepareStatement(query1);
        //prst.setString(1,user_details.getU_email());
        prst.setString(1, usr_email);
        rs1 = prst.executeQuery();
        if (!rs1.next() ) {
        	 prst = con.prepareStatement(query2);
        	 /*prst.setString(1,user_details.getU_email());
        	 prst.setString(2,user_details.getPwd());
             prst.setString(3,user_details.getNam());
             prst.setString(4,user_details.getPhn());
             prst.setString(5,user_details.getAddress());*/
        	 
        	 
        	prst.setString(1,usr_email);
        	prst.setString(2,usr_pwd);
            prst.setString(3,usr_name);
            prst.setString(4,usr_phn);
            prst.setString(5,usr_addrs);
            		
        			
             rs = prst.executeUpdate() > 0;
             System.out.println("User Registered Value : "+rs);
             
             }else{
            	 rs=false;
            	 System.out.println("User Registered Value : "+rs);
             }
         
        prst.close();
        disconnect();
        
       
         return rs;
         
    }
	
	public AdminGeSe admin_log(String a_uname, String a_pwd) throws SQLException{
		AdminGeSe admin = null;
		PreparedStatement prst=null;
		ResultSet rs=null;
		
		String query1 = "Select * from admin where email=? and password=?";
		initializeDatabase();
		
     	//stmt1 = con.createStatement();
        prst = con.prepareStatement(query1);
        prst.setString(1, a_uname);
        prst.setString(2, a_pwd);
        rs = prst.executeQuery();
        
        if (rs.next()) {
        	String uname_a=rs.getString("email");
        	String pwd_a=rs.getString("password");
        	admin = new AdminGeSe(uname_a,pwd_a);
        	System.out.println(pwd_a+" : "+pwd_a);
           	}
        
        //rs.last();
        int count = rs.getRow();
        System.out.println("admin = "+count);
        rs.close();
        prst.close();
         
        //disconnect();
        return admin;
        
    }
	
	
	public boolean Insert_Flt(String name,String pri,String flt_num,String flt_from,String flt_to,String dep,String arr,int tot_se,int b_se,String dt) throws SQLException{
		
		
		PreparedStatement prst=null;
		//Statement st = null;
		ResultSet rs1= null;
		boolean rs;
		
		String query1 = "Select * from flights where flight_number=?";
		String query2 = "Insert into flights values(?,?,?,?,?,?,?,?,?,?)";
		initializeDatabase();
		
        prst = con.prepareStatement(query1);
        //prst.setString(1,user_details.getU_email());
        prst.setString(1, flt_num);
        rs1 = prst.executeQuery();
        if (!rs1.next() ) {
        	 prst = con.prepareStatement(query2);
        	 /*prst.setString(1,user_details.getU_email());
        	 prst.setString(2,user_details.getPwd());
             prst.setString(3,user_details.getNam());
             prst.setString(4,user_details.getPhn());
             prst.setString(5,user_details.getAddress());*/
        	 
        	 
        	prst.setString(1,name);
        	prst.setString(2,pri);
            prst.setString(3,flt_num);
            prst.setString(4,flt_from);
            prst.setString(5,flt_to);
            prst.setString(6,dep);
        	prst.setString(7,arr);
            prst.setInt(8,tot_se);
            prst.setInt(9,b_se);
            prst.setString(10,dt);
            		
        			
             rs = prst.executeUpdate() > 0;
             System.out.println("Inserted Value : "+rs);
             
             }else{
            	 rs=false;
            	 System.out.println("Inserted Value : "+rs);
             }
         
        prst.close();
        disconnect();
        
       
         return rs;
         
    }
	

public boolean delete_Flt(String flt_num) throws SQLException{
		
	PreparedStatement prst=null;
	//Statement st = null;
	ResultSet rs1= null;
	boolean rs;
	
	String query1 = "Select * from flights where flight_number=?";
	String query2 = "Delete from flights where flight_number = ?";
	initializeDatabase();
	
    prst = con.prepareStatement(query1);
    //prst.setString(1,user_details.getU_email());
    prst.setString(1, flt_num);
    rs1 = prst.executeQuery();
    if (rs1.next() ) {
    	 prst = con.prepareStatement(query2);

        prst.setString(1,flt_num);
        		
        rs = prst.executeUpdate() > 0;
        System.out.println("Deleted Value : "+rs);
         
         }else{
        	 rs=false;
        	 System.out.println("Deleted Value : "+rs);
         }
     
    prst.close();
    disconnect();
    
   
    return rs;
 }

public boolean Update_Flt(String name,String pri,String flt_num,String flt_from,String flt_to,String dep,String arr,int tot_se,int b_se,String dt) throws SQLException{
	PreparedStatement prst=null;
	
	String query1 = "UPDATE flights Set airline_name=?,price=?,flight_from=?,flight_to=?,departure_time=?,arrival_time=?,total_seats=?,booked_seats=?,date=? where flight_number=?";
	initializeDatabase();
	
 	//stmt1 = con.createStatement();
    prst = con.prepareStatement(query1);
    prst.setString(1, name);
    prst.setString(2, pri);
    prst.setString(3, flt_from);
    prst.setString(4, flt_to);
    prst.setString(5, dep);
    prst.setString(6, arr);
    prst.setInt(7, tot_se);
    prst.setInt(8, b_se);
    prst.setString(9, dt);
    prst.setString(10, flt_num);
    
    Boolean rs = prst.executeUpdate() > 0;
    if (rs)
    {
    	rs=true;
    	System.out.println("Updated Value : "+rs);
    
		}else{
			rs=false;
			System.out.println("Updated Value"+rs);
		}
    
    prst.close();
    disconnect();
    
    return rs;
}
	
public boolean Update_AdminPwd(String a_email,String a_pass) throws SQLException{
	
	PreparedStatement prst=null;
	
	//String quer1 = "Select * from flights where email=?";
	String query1 = "Update admin set password = ? where email = ?";
	
	initializeDatabase();
	
    prst = con.prepareStatement(query1);
    //prst.setString(1,user_details.getU_email());
    prst.setString(1, a_pass);
    prst.setString(2, a_email);
    
    Boolean rs = prst.executeUpdate() > 0;
    if (rs)
    {
    	rs=true;
    	System.out.println("Admin Password Updated : "+rs);
    
		}else{
			rs=false;
			System.out.println("Admin Password Not Updated"+rs);
		}
    
    prst.close();
    disconnect();
    
    return rs;
        
}



	

	
	
	
	
	
   
	/*public static void main(String[] args) throws ClassNotFoundException, SQLException {
		db_con db = new db_con("jdbc:mysql://localhost:3306/flyaway_db", "root", "root");
		db.initializeDatabase();
		//db.listAllFlights("Delhi", "Jaipur", "10-03-2023");
		db.getFlight("Delhi", "Jaipur", "10-03-2023");
		db.UserLog("megha@gmail.com","megha123");
		db.Book_Fl("F001");
		db.Enter_User("mgha1@gmail.com", "cccc", "meghas","78787878","njnjknjk");
		db.admin_log("Admin@flyaway.com","Admin123");
		
	}*/
	
}
 
	
