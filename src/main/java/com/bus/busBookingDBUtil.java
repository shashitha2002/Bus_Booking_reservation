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
		
		
		//*********** Booking Ticket ***************//
		
		public static boolean AddTicket(String id , String date , String time , String start, String destination ,String seatno) {
			
			boolean isSuccess = false;
			
			int convId = Integer.parseInt(id);
			
			try {
				
				conn = DBConnect.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into tickets values (0,'"+date+"','"+time+"','"+start+"','"+destination+"','"+seatno+"','"+convId+"')";
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
	
		//*********** get tickets details***************//
		
				public static List<Tickets> getTickets(String pid){
					
					int convId = Integer.parseInt(pid);
					
					ArrayList<Tickets> tik = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from tickets where pas_id='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String date = rs.getString(2);
							String time = rs.getString(3);
							String start = rs.getString(4);
							String destination = rs.getString(5);
							String seatNo = rs.getString(6);	
							int pasid = rs.getInt(7);
							
							Tickets t = new Tickets(id,date,time,start,destination,seatNo,pasid);
							
							tik.add(t);
							
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					
					return tik;
					
					
				}
				
				
				//*********** get a single ticket to Update ***************//
				
				public static List<Tickets> getToUpdateTicket(String tid){
					
					int convId = Integer.parseInt(tid);
					
					ArrayList<Tickets> tik = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from tickets where ticket_no='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String date = rs.getString(2);
							String time = rs.getString(3);
							String start = rs.getString(4);
							String destination = rs.getString(5);
							String seatNo = rs.getString(6);	
							int pasid = rs.getInt(7);
							
							Tickets t = new Tickets(id,date,time,start,destination,seatNo,pasid);
							
							tik.add(t);
							
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					
					return tik;
					
					
				}
				
				//*********** Update ticket ***************//	
				
				public static boolean updateTicket(String id,String date,String time,String start,String destination,String seatNo) {
					
					boolean isSuccess = false;
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "UPDATE tickets SET Date = '"+date+"', time = '"+time+"', start = '"+start+"', destination = '"+destination+"', seatNo = '"+seatNo+"' where ticket_no = '"+id+"'";
						
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
				
				
				
				//*********** Delete ticket ***************//
				
				public static boolean deleteTicket(String id) {
					
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(id);
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "DELETE FROM tickets WHERE ticket_no = '"+convId+"'";
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
				
				//***********  insert vehicle ***************//
				
				public static boolean insertVehicle(String BusOwnerId , String RegNo , String chassie) {
					
					boolean isSuccess = false;
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "insert into vehicle values (0,'"+RegNo+"','"+chassie+"','"+BusOwnerId+"')";
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
				
				//*********** read vehicles ***************//
				
				public static List<Vehicles> getVehicles(String pid){
					
					int convId = Integer.parseInt(pid);
					
					ArrayList<Vehicles> bus = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from vehicle where bus_owner_id='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String vehicle_Reg_No = rs.getString(2);
							String chassisNo = rs.getString(3);
							int bus_owner_id = rs.getInt(4);
							
							Vehicles b = new Vehicles(id,vehicle_Reg_No,chassisNo,bus_owner_id);
							
							bus.add(b);
							
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					
					return bus;
					
					
				}	
				
				
				//*********** get a single vehicle to Update ***************//
				
				public static List<Vehicles> getToUpdateVehicle(String vid){
					
					int convId = Integer.parseInt(vid);
					
					ArrayList<Vehicles> bus = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from vehicle where bus_owner_id='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String vehicle_Reg_No = rs.getString(2);
							String chassisNo = rs.getString(3);
							int bus_owner_id = rs.getInt(4);
							
							Vehicles b = new Vehicles(id,vehicle_Reg_No,chassisNo,bus_owner_id);
							
							bus.add(b);
							
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					
					return bus;
					
					
				}
				
				
				//*********** Update vehicle ***************//
				
				public static boolean updateVehicle(String Id , String RegNo , String chassie, String BusOwnerId) {
					
					int convId = Integer.parseInt(BusOwnerId);
					
					boolean isSuccess = false;
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "UPDATE vehicle SET vehicle_Reg_No = '"+RegNo+"', chassisNo = '"+chassie+"'where bus_owner_id = '"+convId+"'";
						
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
				
				
				//*********** delete vehicle form the table ***************//
				
				public static boolean deleteVehicle(String id) {
					
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(id);
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "DELETE FROM vehicle WHERE bus_owner_id = '"+convId+"'";
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
				
				//*********** Validate Manager ***************//
				
				public static List<Manager> validateManager(String userName,String password){
					
					ArrayList<Manager> manager = new ArrayList<>();
					
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "select * from manager where username = '"+userName+"' and password = '"+password+"'";
						
						rs = stmt.executeQuery(sql);
						
						if(rs.next()) {
							int mid = rs.getInt(1);
							String name = rs.getString(2);
							String NIC = rs.getString(3);		
							String userU = rs.getString(4);	
							String passU = rs.getString(5);
							
							
							Manager m = new Manager(mid,name,NIC,userU,passU);
							
							manager.add(m);
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return manager;
					
				}
				
				
				//***********  Add a travel ***************//
				
				public static boolean insertTravel(String date , String time , String departure , String destination , String turns , String driveName, String busNo) {
					
					int convId = Integer.parseInt(busNo);
					boolean isSuccess = false;
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "insert into travel values(0,'"+date+"','"+time+"','"+departure+"','"+destination+"','"+turns+"','"+driveName+"','"+convId+"')";
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
				
				//***********  get travel time table ***************//
				
				public static List<Travels> getTimeTable(){
					
					ArrayList<Travels> travel = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from travel";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String date = rs.getString(2);
							String time = rs.getString(3);
							String departure = rs.getString(4);
							String destination = rs.getString(5);
							String turns = rs.getString(6);
							String driveName = rs.getString(7);
							int busNo = rs.getInt(8);
							
							Travels t = new Travels(id,date,time,departure,destination,turns,driveName,busNo);
							
							travel.add(t);
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return travel;
					
				}
				
				//*********** get a single Travel to Update ***************//
				
				public static List<Travels> getToUpdateTravel(String tid){
					
					int convId = Integer.parseInt(tid);
					
					ArrayList<Travels> travel = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from travel where travel_id='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							String date = rs.getString(2);
							String time = rs.getString(3);
							String departure = rs.getString(4);
							String destination = rs.getString(5);
							String turns = rs.getString(6);
							String driveName = rs.getString(7);
							int busNo = rs.getInt(8);
							
							Travels t = new Travels(id,date,time,departure,destination,turns,driveName,busNo);
							
							travel.add(t);
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return travel;
					
				}
				
				
				//*********** Update Travel ***************//
				
				public static boolean updateTravel(String id,String date ,String time ,String departure , String destination , String turns , String driverName, String busNo) {
					
					int convId = Integer.parseInt(id);
					int convBusNo = Integer.parseInt(busNo);
					
					boolean isSuccess = false;
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "UPDATE travel SET date = '"+date+"', time = '"+time+"',departure = '"+departure+"',destination = '"+destination+"',turns='"+turns+"',driverName='"+driverName+"',busNo='"+convBusNo+"' where travel_id = '"+convId+"'";
						
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
				
				
				//*********** Delete travel ***************//
				
				public static boolean deleteTravel(String id) {
					
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(id);
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "DELETE FROM travel WHERE travel_id = '"+convId+"'";
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
				
				//*********** Add complain ***************//
				
				public static boolean insertComplain(String id,String complain) {
					
					int convId = Integer.parseInt(id);
					boolean isSuccess = false;
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "insert into complainsresponds(comId,pasId,complain) values(0,'"+convId+"','"+complain+"')";
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
				
				
				//*********** get my complains and responses ***************//
				
				public static List<ComplainsAndResponds> getMyComplains(String pid){
					
					int convId = Integer.parseInt(pid);
					
					ArrayList<ComplainsAndResponds> complains = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from complainsresponds where pasId='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							int passengerId = rs.getInt(2);
							String complain = rs.getString(3);
							String respond = rs.getString(4);
							
							ComplainsAndResponds cnr = new ComplainsAndResponds(id,passengerId,complain,respond);
							
							complains.add(cnr);
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return complains;
					
				}
				
				
				
				//*********** get a single Complain to Update ***************//
				
				public static List<ComplainsAndResponds> getToUpdateComplain(String cid){
					
					int convId = Integer.parseInt(cid);
					
					ArrayList<ComplainsAndResponds> complains = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from complainsresponds where comId='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							int passengerId = rs.getInt(2);
							String complain = rs.getString(3);
							String respond = rs.getString(4);
							
							ComplainsAndResponds cnr = new ComplainsAndResponds(id,passengerId,complain,respond);
							
							complains.add(cnr);
							
							
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return complains;
					
				}
				
				
				//*********** Update complains ***************//
				
				public static boolean updateComplain(String comId,String complain,String respond) {
					
					int convId = Integer.parseInt(comId);
					
					boolean isSuccess = false;
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "UPDATE complainsresponds SET complain = '"+complain+"' where comId = '"+convId+"'";
						
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
				
				
				
				//*********** Delete Complain ***************//
				
				public static boolean deleteComplain(String id) {
					
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(id);
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "DELETE FROM complainsresponds WHERE comId = '"+convId+"'";
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
				
				
				//*********** Admin validate ***************//
				
				public static List<Admin> Adminvalidate(String userName,String password){
					
					ArrayList<Admin> admin = new ArrayList<>();
					
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "select * from admin where username = '"+userName+"' and password = '"+password+"'";
						
						rs = stmt.executeQuery(sql);
						
						if(rs.next()) {
							int id = rs.getInt(1);
							String name = rs.getString(2);
							String NIC = rs.getString(3);
							String userU = rs.getString(4);	
							String passU = rs.getString(5);
							
							
							Admin a = new Admin(id,name,NIC,userU,passU);
							
							admin.add(a);
							
						}
						
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return admin;
					
				}
				
				
				//***********get all complains for admin***************//
				
				public static List<ComplainsAndResponds> getAllRespond(){
					
					ArrayList<ComplainsAndResponds> complains = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from complainsresponds";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							int passengerId = rs.getInt(2);
							String complain = rs.getString(3);
							String respond = rs.getString(4);
							
							ComplainsAndResponds cnr = new ComplainsAndResponds(id,passengerId,complain,respond);
							
							complains.add(cnr);
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return complains;
					
				}
				
				
				//*********** get a single Complain to Update ***************//
				
				public static List<ComplainsAndResponds> getToUpdateRespond(String rid){
					
					int convId = Integer.parseInt(rid);
					
					ArrayList<ComplainsAndResponds> complains = new ArrayList<>();
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from complainsresponds where comId='"+convId+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							
							int id = rs.getInt(1);
							int passengerId = rs.getInt(2);
							String complain = rs.getString(3);
							String respond = rs.getString(4);
							
							ComplainsAndResponds cnr = new ComplainsAndResponds(id,passengerId,complain,respond);
							
							complains.add(cnr);
							
							
							
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return complains;
					
				}
				
				
				//*********** Update complains ***************//
				
				public static boolean updateRespond(String comId,String complain,String respond) {
					
					int convId = Integer.parseInt(comId);
					
					boolean isSuccess = false;
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						String sql = "UPDATE complainsresponds SET respond = '"+respond+"' where comId = '"+convId+"'";
						
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
				
				
				//*********** Delete Response ***************//
				
				public static boolean deleteResponse(String id) {
					
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(id);
					
					try {
						
						conn = DBConnect.getConnection();
						stmt = conn.createStatement();
						
						String sql = "DELETE FROM complainsresponds WHERE comId = '"+convId+"'";
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
}
