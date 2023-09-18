package myPrograms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Db_Con.db_con;

//@WebServlet ("/FlightsList")
//@WebServlet(description = "This servlet acts as a page controller for the application, handling all request from the user.", urlPatterns = { "/ControllerServlet" })
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ControllerServlet(){
		super();
	}
	
	private db_con FlightDAO;
	 
    public void init() {
        String url = getServletContext().getInitParameter("jdbcURL");
        String uname = getServletContext().getInitParameter("jdbcUsername");
        String pwd = getServletContext().getInitParameter("jdbcPassword");
 
        FlightDAO = new db_con(url, uname, pwd);
        
    }
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
}
		
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
            switch (action) {
            case "/FlightsList":
                ListFlt(request, response);
                break;
            
            case "/UserLogin":
            	userLogin(request,response);
            	//Book(request,response);
            	break;
            	
            case "/UpdateSeats":
                UpdtSeats(request, response);
            	break;
            	
            /*case "/FlightNum":
            	flightNum(request,response);
            	//Book(request,response);
            	break;*/
            case "/RegisterUsr":
                Register(request, response);
            	break;
 
            case "/AdminLogin1":
            	admin_Login(request,response);
            	//Book(request,response);
            	break;
            
            case "/InsertFlight":
            	insertFlt(request,response);
            	//Book(request,response);
            	break;
            	
            case "/DeleteFlight":
            	deleteFlt(request,response);
            	//Book(request,response);
            	break;
            	
            case "/UpdateFlight":
            	updateFlt(request,response);
            	//Book(request,response);
            	break;	
            
            case "/UpdtFltDetails":
            	updateFltDtls(request,response);
            	//Book(request,response);
            	break;
            	
            case "/AdminPassword":
            	updateAdminPwd(request,response);
            	break;
            	
            default:
            	Home(request, response);
                break;
            }
		}catch (SQLException ex) {
            throw new ServletException(ex);
        }
	}

	

	

	private void ListFlt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		String flt_from = request.getParameter("from");
		String flt_to = request.getParameter("to");
		String dt = request.getParameter("departure");
		
		List<FlightsListGeSe> listFlt1 = FlightDAO.getFlight(flt_from,flt_to,dt);
		request.setAttribute("listFltx", listFlt1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListOfFlights.jsp");
		dispatcher.forward(request, response);
	}
	
	
	
	private void userLogin(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		String u_email = request.getParameter("email");
		String pwd = request.getParameter("pass");
		String flt_num = request.getParameter("flt_num2");
		
		
		UserGeSe user1 = FlightDAO.UserLog(u_email,pwd);
		request.setAttribute("userx", user1 );
		
		
		FlightsListGeSe flightn = FlightDAO.Book_Fl(flt_num);
		
		request.setAttribute("bookx", flightn);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookFlight.jsp");
		dispatcher.forward(request, response);
	}
	
	/*private void flightNum(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {

		String flt_num = request.getParameter("flt_num1");
		
		FlightsListGeSe flightn = FlightDAO.Book_Fl(flt_num);
		request.setAttribute("bookx", flightn );
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("FinalD.jsp");
		
		dispatcher.forward(request, response);
	}*.
	
	/*private void Book(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		
		String flt_num = request.getParameter("flt_nm");
		
		FlightsListGeSe flightn = FlightDAO.Book_Fl(flt_num);
		
		request.setAttribute("bookx", flightn );
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookFlight.jsp");
		
		dispatcher.forward(request, response);
	}
		*/
	
	private void UpdtSeats(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
			
		String flt_num = request.getParameter("flt_num2");
		System.out.println("Flight Number::"+flt_num);
		//String b_seats = request.getParameter("travelrs");
		

			int booking_seats = Integer.parseInt(request.getParameter("travelrs"));
			int booked_seats = Integer.parseInt(request.getParameter("travellers"));
			int available_s = Integer.parseInt(request.getParameter("available"));
		
				
		
					int b_se = booked_seats+ booking_seats;
					System.out.println("Total Seats Booked::"+b_se);
		
					FlightsListGeSe tvlrs = new FlightsListGeSe(b_se,flt_num);
					FlightDAO.Updt_Trvlrs(tvlrs);
					
					//For displaying email id once user has logged in - values from confirm booking.jsp
					String flag1 = request.getParameter("flag");
					String u_email1 = request.getParameter("u_email");
					String u_pwd1 = request.getParameter("u_pwd");
					
					request.setAttribute("flag", flag1);
					request.setAttribute("u_email", u_email1);
					request.setAttribute("u_pwd", u_pwd1);
					
					//response.sendRedirect("BookedFl.jsp");
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("BookedFl.jsp");
					dispatcher.forward(request, response);
				}
			
	
	private void Register(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		String usr_email = request.getParameter("user_email");
		
		String usr_pwd = request.getParameter("user_pwd");
		String usr_name = request.getParameter("user_name");
		
		String usr_phn = request.getParameter("phn_nbr");
		String usr_addrs = request.getParameter("user_add");
		
		String flt_num = request.getParameter("flt_num");
		String travelrs_1 = request.getParameter("travelrs_1");
		
		boolean user_details = FlightDAO.Enter_User(usr_email,usr_pwd,usr_name,usr_phn,usr_addrs);
		//FlightDAO.Enter_User(user_details);
		
		request.setAttribute("insertx", user_details);
		request.setAttribute("fl", flt_num);
		request.setAttribute("tr", travelrs_1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("UserRegistered.jsp");
		dispatcher.forward(request, response);
		//response.sendRedirect("UserRegistered.jsp");
		
	}

	
	private void admin_Login(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		
		String a_uname = request.getParameter("a_email");
		String a_pwd = request.getParameter("a_pass");
		
		AdminGeSe admin = FlightDAO.admin_log(a_uname,a_pwd);
		
		request.setAttribute("adminlog", admin);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminPage.jsp");
       dispatcher.forward(request, response);
		
		
	}
		
	private void insertFlt(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		
		String name = request.getParameter("f_name");
		String pri = request.getParameter("f_price");
		String flt_num = request.getParameter("f_num");
		String flt_from = request.getParameter("f_from");
		String flt_to = request.getParameter("f_to");
		String dep = request.getParameter("f_dtime");
		String arr = request.getParameter("f_atime");
		int tot_se = Integer.parseInt(request.getParameter("f_tseats"));
		int b_se = Integer.parseInt(request.getParameter("f_bseats"));
		String dt = request.getParameter("f_dt");
		String a_email1 = request.getParameter("a_email");
		
		boolean insertFlt1 = FlightDAO.Insert_Flt(name, pri, flt_num, flt_from, flt_to, dep, arr, tot_se, b_se, dt);
		//FlightsListGeSe insertFlt1 = new FlightsListGeSe(name, pri, flt_num, flt_from, flt_to, dep, arr, tot_se, b_se, dt);
		//FlightDAO.Insert_Flt(insertFlt1);
		
		
		request.setAttribute("insertFlt", insertFlt1);
		request.setAttribute("a_email", a_email1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("FlightDeletedInserted.jsp");
       dispatcher.forward(request, response);
		
		
	}
	
	private void deleteFlt(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		
		String flt_num = request.getParameter("f_num");
		String a_email1 = request.getParameter("a_email");
		boolean deleteFlt1 = FlightDAO.delete_Flt(flt_num);
		
		
		request.setAttribute("deleteFlt", deleteFlt1);
		request.setAttribute("a_email", a_email1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("FlightDeletedInserted.jsp");
	    dispatcher.forward(request, response);
	}
	
	private void updateFlt(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		
		String flt_num = request.getParameter("f_num");
		String a_email1 = request.getParameter("a_email");
		
		
		FlightsListGeSe flightn = FlightDAO.Book_Fl(flt_num);
		
		request.setAttribute("bookx", flightn);
		request.setAttribute("a_email", a_email1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("UpdtFltDtls.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void updateFltDtls(HttpServletRequest request, HttpServletResponse response)
			 throws SQLException, IOException, ServletException {
		
		String name = request.getParameter("f_name");
		String pri = request.getParameter("f_price");
		String flt_num = request.getParameter("f_num");
		String flt_from = request.getParameter("f_from");
		String flt_to = request.getParameter("f_to");
		String dep = request.getParameter("f_dtime");
		String arr = request.getParameter("f_atime");
		int tot_se = Integer.parseInt(request.getParameter("f_tseats"));
		int b_se = Integer.parseInt(request.getParameter("f_bseats"));
		String dt = request.getParameter("f_dt");
		String a_email1 = request.getParameter("a_email");
		
		boolean updateFlt1 = FlightDAO.Update_Flt(name, pri, flt_num, flt_from, flt_to, dep, arr, tot_se, b_se, dt);
		//FlightsListGeSe insertFlt1 = new FlightsListGeSe(name, pri, flt_num, flt_from, flt_to, dep, arr, tot_se, b_se, dt);
		//FlightDAO.Insert_Flt(insertFlt1);
		
		
		request.setAttribute("updateFlt", updateFlt1);
		request.setAttribute("a_email", a_email1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("FlightDeletedInserted.jsp");
      dispatcher.forward(request, response);
		
		
	}
	
	
	private void updateAdminPwd(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		String a_email = request.getParameter("a_email");
		String a_pass = request.getParameter("a_pass");
		
		boolean update_admin_pwd= FlightDAO.Update_AdminPwd(a_email, a_pass);
		
		request.setAttribute("updateAPwd", update_admin_pwd);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("UpdatedAdminPwd.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	private void Home(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("welcomeP.jsp");
        dispatcher.forward(request, response);
    }
	

}
