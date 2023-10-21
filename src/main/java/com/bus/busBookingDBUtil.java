package com.bus;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	public class busBookingDBUtil {
		
		private static Connection conn = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
		//*********** validate passenger ***************//
		
		
		public static List<Passenger> validate(String userName,String password){
			
			ArrayList<Passenger> pas = new ArrayList<>();
			
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "select * from passenger where username = '"+userName+"' and password = '"+password+"'";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String NIC = rs.getString(3);
					String phone = rs.getString(4);
					String email = rs.getString(5);
					String userU = rs.getString(6);	
					String passU = rs.getString(7);
					
					
					Passenger p = new Passenger(id,name,NIC,phone,email,userU,passU);
					
					pas.add(p);
					
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return pas;
			
		}
		
		
		//*********** validate bus owner ***************//

		
		public static List<BusOwner> validateBusOwner(String userName,String password){
			
			ArrayList<BusOwner> bs = new ArrayList<>();
		
			//validate
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "select * from bus_owner where username = '"+userName+"' and password = '"+password+"'";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String NIC = rs.getString(3);
					String phone = rs.getString(4);
					String email = rs.getString(5);
					String userU = rs.getString(6);	
					String passU = rs.getString(7);
					
					
					BusOwner busOwner = new BusOwner(id,name,NIC,phone,email,userU,passU);
					
					bs.add(busOwner);
					
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return bs;
			
		}
		
	
		
		//*********** Insert Passenger ***************//
		
		
		public static boolean insertPassenger(String name , String NIC , String phone , String email, String username ,String password) {
		
			boolean isSuccess = false;
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into passenger values (0,'"+name+"','"+NIC+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
		
	}
		
		
		
		//*********** insert bus owner ***************//
		
		
		public static boolean insertBusOwner(String name , String NIC , String phone , String email, String username ,String password) {
		
			boolean isSuccess = false;
			
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into bus_owner values (0,'"+name+"','"+NIC+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
		
	}
		
		
		
		//*********** get passenger details***************//
		
		public static List<Passenger> getPassengerDetails(String pid){
			
			int convId = Integer.parseInt(pid);
			
			ArrayList<Passenger> pas = new ArrayList<>();
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from passenger where pas_id = '"+convId+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String NIC = rs.getString(3);
					String phone = rs.getString(4);
					String email = rs.getString(5);
					String userU = rs.getString(6);	
					String passU = rs.getString(7);
					
					Passenger p = new Passenger(id,name,NIC,phone,email,userU,passU);
					
					pas.add(p);
					
					
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return pas;
			
			
		}
		
		//*********** update passenger ***************//
		
		
		public static boolean updatePassenger(String id,String name,String nic,String phone,String email,String username,String password) {
			
			boolean isSuccess = false;
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				String sql = "UPDATE passenger SET name = '"+name+"', NIC = '"+nic+"', phone = '"+phone+"', email = '"+email+"', username = '"+username+"', password = '"+password+"' "
						+ "where pas_id = '"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
		
		
		//*********** Delete passenger ***************//
		
		
		public static boolean deletePassenger(String id) {
			
			boolean isSuccess = false;
			
			int convId = Integer.parseInt(id);
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "DELETE FROM passenger WHERE pas_id = '"+convId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
					
				}
				else {
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
			
		}
		
		
		//*********** Add card details ***************//
		
		public static boolean addCard(String id,String card_number,String ex_month,String ex_year,String CVC,String Bank) {
			
			boolean isSuccess = false;
			int convId = Integer.parseInt(id);
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into payment values (0,'"+card_number+"','"+ex_month+"','"+ex_year+"','"+CVC+"','"+Bank+"','"+convId+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess; 
			
		}
}
