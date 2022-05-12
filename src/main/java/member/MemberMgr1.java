package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class MemberMgr1 {

	private DBConnectionMgr pool;

	
	public static final String SAVEFOLDER = "C:/Jsp/ateamweb/ateamweb/src/main/webapp/board/photo/";

	public static final String ENCODING = "UTF-8";
	public static final int MAXSIZE = 1024 * 1024 * 10; // 10MB

	public MemberMgr1() {
		pool = DBConnectionMgr.getInstance();
	} 
	
	

public boolean sendNum(String emailaddr) { //MailSend.java
	boolean flag=false;
	MemberMgr1 mgr=new MemberMgr1();
	Boolean fullemail=mgr.findId(emailaddr);
		
	if(fullemail=true) {
		Random r = new Random();
		int n = r.nextInt(9000)+999;
		String num= Integer.toString(n);
			
		String title="OOO.com에서 인증번호를 보냈습니다!!";
		String content="인증번호는 "+num+"입니다";
		//String content="인증번호는 789입니다";
		GmailSend.send(title, content, emailaddr);
		flag=true;
			}
			return flag;
		}
		
//public static void main(String[] args) {
//	MemberMgr1 mgr=new MemberMgr1();
//	mgr.sendNum("aaa@naver.com");
//}
	
	//-------------- id찾기 이것 아님(매개변수 2개)---------------
	public String findId(String email1, String email2) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	//boolean flag=false;
	String e1=null;
	String e2=null;
	String email3=null;
	try {
		con = pool.getConnection();
		sql = "select id from tblmember where email1=? and email2=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email1);
		pstmt.setString(2, email2);

		rs = pstmt.executeQuery();
		if(rs.next()) {
			e1=rs.getString(1);
			e2=rs.getString(2);
			email3=e1+"@"+e2;
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return email3;	
	}
	
	
	//-------------- id찾기---------------
	public boolean findId(String emailaddr) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	boolean flag = false;
	int idx = emailaddr.indexOf('@');
	String e1 = emailaddr.substring(0, idx);
	String e2 = emailaddr.substring(idx+1);
	try {
		con = pool.getConnection();
		sql = "select id from tblmember where email1=? and email2=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, e1);
		pstmt.setString(2, e2);
		rs = pstmt.executeQuery();
		flag = rs.next();
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return flag;	
	}

	// ------------- �α��� Ȯ���ϱ� -------------
	public boolean loginMember(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			//System.out.println(id+":"+pwd);
			con = pool.getConnection();
			sql = "select id from tblmember where id=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if (rs.next())
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	//회원정보 가져오기
	public MemberBean1 getMember(String id) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	MemberBean1 bean=new MemberBean1();
	try {
		con = pool.getConnection();
		sql = "select * from tblmember where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			bean.setId(rs.getString("id"));
			bean.setPwd(rs.getString("pwd"));
			bean.setName(rs.getString("name"));
			bean.setEmail1(rs.getString("email1"));
			bean.setEmail2(rs.getString("email2"));
			bean.setPhonecorp(rs.getString("phonecorp"));
			bean.setPhone1(rs.getString("phone1"));
			bean.setPhone2(rs.getString("phone2"));
			bean.setPhone3(rs.getString("phone3"));
			bean.setGrade(rs.getString("grade"));
			bean.setImgname(rs.getString("imgname"));
			bean.setImgsize(rs.getInt("imgsize"));
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return bean;	
		
		
	}
	
	// ------------- �����ϱ� -------------
	public boolean insertMember(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
	//req는 각 요소에 file로 넘어온 것을 처리할 수 있는 객체. 그것을 바로 밑처럼 한 후에는 비어 있으므로,
	// 103라인 처럼, 이제 그 객체안에 채워 넣는 것.		
			MultipartRequest multi=
					new MultipartRequest(req, SAVEFOLDER, MAXSIZE, ENCODING
						, new DefaultFileRenamePolicy());
			String imgname=null;
			int imgsize=0;
			if(multi.getFilesystemName("imgname")!=null) {
				imgname=multi.getFilesystemName("imgname");
				imgsize=(int)multi.getFile("imgname").length(); 
				//System.out.println(multi.getParameter("id")+":"+multi.getParameter("pwd"));
		}
			con = pool.getConnection();
			sql = "insert tblmember(id, pwd, name, email1, email2,"
					+ "phonecorp, phone1, phone2, phone3, imgname, imgsize)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("id"));
			//밑에 똑같이 받으면 됩니다.
			pstmt.setString(2, multi.getParameter("pwd"));
			pstmt.setString(3, multi.getParameter("name"));
			pstmt.setString(4, multi.getParameter("email1"));
			pstmt.setString(5, multi.getParameter("email2"));
			pstmt.setString(6, multi.getParameter("phonecorp"));
			pstmt.setString(7, multi.getParameter("phone1"));
			pstmt.setString(8, multi.getParameter("phone2"));
			pstmt.setString(9, multi.getParameter("phone3"));
			pstmt.setString(10, imgname);
			pstmt.setInt(11, imgsize);
			int cnt = pstmt.executeUpdate();
			if (cnt == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

//	public static void main(String[] args) {
//		String emailaddr = "aaa@abc.com";
//		int idx = emailaddr.indexOf('@');
//		String e1 = emailaddr.substring(0, idx);
//		String e2 = emailaddr.substring(idx+1);
//		System.out.println(e1 + " : " + e2);
//	}
	
	
	public static void main(String[] args) {
		Random r = new Random();
		
		for (int i = 0; i < 100; i++) {
			int n = r.nextInt(9000)+999;
			System.out.println(n);
		}//--for
	}
	
	
	
	
	
}
