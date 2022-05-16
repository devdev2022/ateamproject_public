package chart;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
			sql = "insert tblchart(ranking, artist, title, albumImg, albumName, getDate, memuId, songId) "
					+ "values(?, ?, ?, ?, ?, now(), ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getRanking());
			pstmt.setString(2, bean.getArtist());
			pstmt.setString(3, bean.getArtist());
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
	
}
