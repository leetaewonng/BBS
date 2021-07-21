package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			 String dbURL = "jdbc:mysql://localhost:3306/BBS?useUnicode=true&characterEncoding=UTF-8";
			    String dbID = "root";
			    String dbPassword = "root";
			    Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1; // 로그인 성공
				else 
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
//	public int join(String userID, String userPassword, String userPassword2, String userName, String userAge, String userGender, String userEmail) {
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?, ?)";
//		try {
//			pstmt = conn.prepareStatement(SQL);
//			pstmt.setString(1, userID);
//			pstmt.setString(2, userPassword);
//			pstmt.setString(3, userPassword2);
//			pstmt.setString(4, userName);
//			pstmt.setString(5, userAge);
//			pstmt.setString(6,userGender);
//			pstmt.setString(7, userEmail);
//			return pstmt.executeUpdate();
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		return -1; // 데이터베이스 오류
//	}

	public int registerCheck(String userID) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next() || userID.equals("")) {
				return 0; // 이미존재하는회원
			}
			else {
				return 1; // 등록가능한회원
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //데이터베이스오류
	}
	
	public int register(String userID, String userPassword, String userPassword2, String userName, String userAge, String userGender, String userEmail) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ? , ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userPassword2);
			pstmt.setString(4, userName);
			pstmt.setString(5, userAge);
			pstmt.setString(6,userGender);
			pstmt.setString(7, userEmail);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스오류
	}

	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserAge());
			pstmt.setString(5, user.getUserGender());
			pstmt.setString(6, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
//public int join2(String userPassword2, String userPassword) {
//	String SQL = "SELECT userPassword FROM USER WHERE userPassword2 = ?";
//	try {
//		pstmt = conn.prepareStatement(SQL);
//		pstmt.setString(2, userPassword);
//		pstmt.setString(3, userPassword2);
//		rs = pstmt.executeQuery();
//		if(rs.next()) {
//			if(userPassword.equals("") || userPassword2.equals(""))
//				return 1; // 패스워드 확인성공
//			else 
//				return 0; // 비밀번호 불일치
//		}
//		return -1; // 아이디가 없음
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return -2; //데이터베이스 오류
//}
}