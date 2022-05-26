package chart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.Vector;

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
	
	public boolean insertVideo(String video, String videoInfo, String Title) {
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
			pstmt.setString(3, Title);
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
	
	public Vector<ChartBean> getAllChart(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector<ChartBean> vlist = new Vector<ChartBean>();
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select * from tblChart order by chnum DESC, ranking ASC limit 100 ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ChartBean bean = new ChartBean();
				bean.setChnum(rs.getString("chnum"));
				bean.setRanking(rs.getString("ranking"));
				bean.setArtist(rs.getString("artist"));
				bean.setTitle(rs.getString("title"));
				bean.setAlbumImg(rs.getString("albumimg"));
				bean.setAlbumName(rs.getString("albumName"));
				bean.setGetDate(rs.getString("getDate"));
				bean.setMenuId(rs.getString("menuId"));
				bean.setSongId(rs.getString("songId"));
				bean.setLyric(rs.getString("lyric"));
				bean.setVideo(rs.getString("video"));
				bean.setVideoInfo(rs.getString("videoInfo"));
				vlist.addElement(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
//	차트가져오기 시간으로 검색
	public Vector<ChartBean> getAllChartByTime(String DateTime){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector<ChartBean> vlist = new Vector<ChartBean>();
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM tblchart WHERE getDate like ? limit 100";
			pstmt = con.prepareStatement(sql);
			System.out.println(DateTime);
			pstmt.setString(1, DateTime + "%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ChartBean bean = new ChartBean();
				bean.setChnum(rs.getString("chnum"));
				bean.setRanking(rs.getString("ranking"));
				bean.setArtist(rs.getString("artist"));
				bean.setTitle(rs.getString("title"));
				bean.setAlbumImg(rs.getString("albumimg"));
				bean.setAlbumName(rs.getString("albumName"));
				bean.setGetDate(rs.getString("getDate"));
				bean.setMenuId(rs.getString("menuId"));
				bean.setSongId(rs.getString("songId"));
				bean.setLyric(rs.getString("lyric"));
				bean.setVideo(rs.getString("video"));
				bean.setVideoInfo(rs.getString("videoInfo"));
				vlist.addElement(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public ChartBean getDetaile(String title) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ChartBean bean = new ChartBean();
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select video, videoInfo, lyric from tblChart where title=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setVideo(rs.getString(1));
				bean.setVideoInfo(rs.getString(2));
				bean.setLyric(rs.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	
}
