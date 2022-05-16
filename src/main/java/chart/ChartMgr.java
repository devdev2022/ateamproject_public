package chart;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

public class ChartMgr {

	DBConnectionMgr pool;
	
	public ChartMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean insertChart(ChartBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblchart(ranking, artist, title, albumImg, albumName, getDate, menuId, songId) "
					+ "values(?, ?, ?, ?, ?, now(), ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getRanking());
			pstmt.setString(2, bean.getArtist());
			pstmt.setString(3, bean.getTitle());
			pstmt.setString(4, bean.getAlbumImg());
			pstmt.setString(5, bean.getAlbumName());
			pstmt.setString(6, bean.getMenuId());
			pstmt.setString(7, bean.getSongId());
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public boolean insertLyric(String lyric, String Artist, String title) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblchart set lyric=?, artist=? where title=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, lyric);
			pstmt.setString(2, Artist);
			pstmt.setString(3, title);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public boolean insertVideo(String video, String videoInfo, String title) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblchart set video=?, videoInfo=? where title=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, video);
			pstmt.setString(2, videoInfo);
			pstmt.setString(3, title);
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	
	
}
