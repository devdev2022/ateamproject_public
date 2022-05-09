package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CmtLikesMgr {

		DBConnectionMgr pool;
		
		public CmtLikesMgr() {
			pool = DBConnectionMgr.getInstance();
		}
		
//		좋아요 처음 저장
		public void insertCmtLikes(CmtLikesBean bean) {
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = null;
			try {
				con = pool.getConnection();
				sql = "insert tblcmtlikes (num, cnum, id) values(?, ?, ?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, bean.getNum());
				pstmt.setInt(2, bean.getCnum());
				pstmt.setString(3, bean.getId());
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt);
			}
			return;
		}
		
//		좋아요 값1로 저장
		public void deleteCmtLikes(int num, int cnum, String id) {
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = null;
			try {
				con = pool.getConnection();
				sql = "delete from tblcmtlikes where cnum=? and id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, cnum);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt);
			}
			return;
		}
		
//		해당게시물에있는 하나의 댓글의 아이디당 좋아요 유무 확인
		public boolean selectCmtLikes(int num, int cnum, String id) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			boolean flag = false;
			try {
				con = pool.getConnection();
				sql = "select * from tblcmtlikes where cnum=? and id=? and num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, cnum);
				pstmt.setString(2, id);
				pstmt.setInt(3, num);
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
		
//		한게시물에있는 하나의 댓글의 좋아요 총수량
		public int countCmtLikes(int num, int cnum) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			int totalCount = 0;
			try {
				con = pool.getConnection();
				sql = "select count(cnum) from tblcmtlikes where num=? and cnum=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setInt(2, cnum);
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
		
		
	}

	
