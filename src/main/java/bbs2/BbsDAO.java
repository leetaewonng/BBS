package bbs2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn;
	private ResultSet rs;
	
	public BbsDAO() {
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
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
	
	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS2 ORDER BY bbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫 번째 게시물인 경우
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public int write(String bbsTitle, String userID, String bbsContent, String bbsAge, String bbsVaccine) {
		String SQL = "INSERT INTO BBS2 VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			pstmt.setString(7, bbsAge);
			pstmt.setString(8, bbsVaccine);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public ArrayList<Bbs> getList(int pageNumber) {
		String SQL = "SELECT * FROM BBS2 WHERE bbsID < ? AND bbsAvailable2 = 1 ORDER BY bbsID DESC LIMIT 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable2(rs.getInt(6));
				bbs.setBbsAge(rs.getString(7));
				bbs.setBbsVaccine(rs.getString(8));
				list.add(bbs);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BBS2 WHERE bbsID < ? AND bbsAvailable2 = 1 ORDER BY bbsID DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Bbs getBbs(int bbsID) {
		String SQL = "SELECT * FROM BBS2 WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable2(rs.getInt(6));
				bbs.setBbsAge(rs.getString(7));
				bbs.setBbsVaccine(rs.getString(8));
				return bbs;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int bbsID, String bbsTitle, String bbsContent, String bbsAge, String bbsVaccine) {
		String SQL = "UPDATE BBS2 SET bbsTitle = ?, bbsContent = ?, bbsAge = ?, bbsVaccine = ? WHERE bbsID = ?";
	    try {
	    	PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setString(3, bbsAge);
			pstmt.setString(4, bbsVaccine);
			pstmt.setInt(5, bbsID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	    return -1; // 데이터베이스 오류
	}
	
	public int delete(int bbsID) {
	    String SQL = "UPDATE BBS2 SET bbsAvailable2 = 0 WHERE bbsID = ?";
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setInt(1, bbsID);
	        return pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1; // 데이터베이스 오류
	}

}
