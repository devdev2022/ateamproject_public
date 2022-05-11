package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class SavePostMgr {
	
	DBConnectionMgr pool;
	
	public SavePostMgr() {
		pool = DBConnectionMgr.getInstance();
	}

//	게시물 저장
	public void insertSavePost(SavePostBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblsavepost (num, id, savePost) values(?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getNum());
			pstmt.setString(2, bean.getId());
			pstmt.setInt(3, bean.getSavePost());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return;
	}
	
//	게시물 저장 삭제
	public void deleteSavePost(int num, String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblsavepost where num=? and id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return;
	}
	
//	게시물 저장 유무 찾기
	public boolean selectSavePost(int num, String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select * from tblsavepost where num=? and id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
//	게시물 저장한 총 수량
	public int countSavePost(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int totalCount = 0;
		try {
			con = pool.getConnection();
			sql = "select count(num) from tblsavepost where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return totalCount;
	}
	
//	로그인한 아이디가 저장한 게시물 번호
	public Vector<SavePostBean> getAllNumSavePost(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<SavePostBean> vlist = new Vector<SavePostBean>();
		try {
			con = pool.getConnection();
			sql = "select * from tblsavepost where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SavePostBean bean = new SavePostBean();
				bean.setId(rs.getString("id"));
				bean.setSavePost(rs.getInt("savepost"));
				bean.setNum(rs.getInt("num"));
				vlist.addElement(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
//	로그인한 아이디가 저장한 게시물 번호 게시판 불러오기
	public Vector<SavePostBean> getAllNumSavePostBoard(String id, int start, int cnt){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<SavePostBean> vlist = new Vector<SavePostBean>();
		try {
			con = pool.getConnection();
			sql = "select * from tblsavepost where id=? limit ?, ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, start);
			pstmt.setInt(3, cnt);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SavePostBean bean = new SavePostBean();
				bean.setId(rs.getString("id"));
				bean.setSavePost(rs.getInt("savepost"));
				bean.setNum(rs.getInt("num"));
				vlist.addElement(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
}
