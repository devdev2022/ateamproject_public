package member;

import java.sql.*;
import java.util.Vector;

//MVC의 컨트롤러에 해당하는 요소. 
public class MemberMgr {
	
	private DBConnectionMgr pool;
	
	public MemberMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	
	//로그인 : 메소드명은 SUN의 작명법을 따라 동사 + 명사 꼴로 통일한다. 
	public boolean loginMember(String id, String pwd) {
		Connection con = null;//DB연결 객체
		PreparedStatement pstmt = null;//쿼리문 객체
		ResultSet rs = null;//쿼리문의 실행 결과 
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from tblMember where id=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next(); 
		} catch (Exception e) {
			e.printStackTrace(); 
			//예외를 추적하여, 모든 내용을 출력. 추적한다는 게 중요합니다.
		} finally {
			//에러여부를 떠나서 무조건 실행.
			//pool의 '반납'에 해당되는 부분. con은 반납하고, pstmt와 rs는 close한다.
			pool.freeConnection(con, pstmt, rs);
			
		}
		return flag;
	}
	

	//id 중복체크 : 
	//select문을 사용하므로 강의에서 정의한 db1 약어를 이용했다.
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from tblMember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			flag = rs.next();//같은 id가 있으면 true, 없으면 false
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	//주소검색
	public Vector<ZipcodeBean> searchZipcode(String area3){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ZipcodeBean> vlist = new Vector<ZipcodeBean>();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM tblzipcode WHERE AREA3 LIKE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+area3+"%"); //'%강남대로%'에 해당하는 영역을 넣는다.
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ZipcodeBean bean = new ZipcodeBean();
				//bean.setZipcode(rs.getString("zipcode")); 
				//그전까진 이렇게 컬럼명을 집어넣었는데... 이렇게 컬럼 인덱스를 넣어봅시다.
				bean.setZipcode(rs.getString(1));
				bean.setArea1(rs.getString(2));
				bean.setArea2(rs.getString(3));
				bean.setArea3(rs.getString(4));
				vlist.addElement(bean); //빈즈를 Vector에 저장				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	
	//회원가입
	public boolean insertMember(MemberBean bean){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "insert tblMember(id,pwd,name,gender,"
					+ "birthday,email,zipcode,address,hobby,job)"
					+ "values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getBirthday());
			pstmt.setString(6, bean.getEmail());
			pstmt.setString(7, bean.getZipcode());
			pstmt.setString(8, bean.getAddress());
			////////////////////////////
			
			//회원가입 페이지에서 체크박스에 해당하는 값들.
			String lists[] = {"인터넷", "여행", "게임", "영화", "운동"};
			String hobby[] = bean.getHobby(); 
			char hb[] = {'0', '0', '0', '0', '0'}; 
			//빈 배열을 생성하고....
			for (int i = 0; i < hobby.length; i++) {
				for (int j = 0; j < lists.length; j++) {
					if(hobby[i].equals(lists[j])) {
						hb[j] = '1';
						break;
					}
				}
				//lists[]와 입력값으로 받아온 hobby[]를 비교하여, 일치하는 값이 나올 때마다 hb에 대입.
			}
			
			//char 배열을 hb를 문자열로 변환.
			pstmt.setString(9, new String(hb));
			
			///////////////////////////
			pstmt.setString(10, bean.getJob());
			
			if(pstmt.executeUpdate()==1) 
				//정상적으로 저장될 경우 실행 결과로 1이 리턴될 것이고,
				flag = true;
				//실행 결과가 1이라면 flag에는 true를 넣어달라.
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		
		return flag;
	}
	
	
	//회원정보 가져오기
	public MemberBean getMember(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MemberBean bean = new MemberBean();
		
		try {
			con = pool.getConnection();
			sql = "select * from tblMember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setId(rs.getString("id")); 
				bean.setPwd(rs.getString("pwd"));
				bean.setName(rs.getString("name"));
				bean.setGender(rs.getString("gender"));
				bean.setBirthday(rs.getString("birthday"));
				bean.setEmail(rs.getString("email"));
				bean.setZipcode(rs.getString("zipcode"));
				bean.setAddress(rs.getString("address"));
				
				String str = rs.getString("hobby");
				String[] hb = new String[str.length()];
				
				/*String hb[] = new String[hobby.length()];
				 * for (int i=0; i < hb.length; i++){
				 * hb[i] = hobby.substring(i, i+1);
				 * } */
				
				hb = str.split("");
				
				bean.setHobby(hb);
				bean.setJob(rs.getString("job"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return bean;
		
	}
	
	
	//회원정보 수정 : insert랑 거의 똑같애요.
	public boolean updateMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "update tblMember set pwd=?, name=?, gender=?, birthday=?, email=?, "
					+"zipcode=?, address=?, hobby=?, job=? "//여기 끝에 한 칸 띄워야 돼요.
					+ "where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPwd());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getGender());
			pstmt.setString(4, bean.getBirthday());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getZipcode());
			pstmt.setString(7, bean.getAddress());
			
			String lists[] = {"인터넷", "여행", "게임", "영화", "운동"};
			String hobby[] = bean.getHobby(); 
			char hb[] = {'0', '0', '0', '0', '0'}; 
			//빈 배열을 생성하고....
			for (int i = 0; i < hobby.length; i++) {
				for (int j = 0; j < lists.length; j++) {
					if(hobby[i].equals(lists[j])) {
						hb[j] = '1';
						break;
					}
				}
				//lists[]와 입력값으로 받아온 hobby[]를 비교하여, 일치하는 값이 나올 때마다 hb에 대입.
			}
			
			//char 배열을 hb를 문자열로 변환.
			pstmt.setString(8, new String(hb));
			
			pstmt.setString(9, bean.getJob());
			
			pstmt.setString(10, bean.getId());
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) flag = true;
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		
		return flag;
	}
	
	
	public static void main(String[] args) {
		MemberMgr mgr = new MemberMgr();
//		System.out.println(mgr.loginMember("aaa", "1234"));
//		System.out.println(mgr.loginMember("aaa", "1111"));
		Vector vec = mgr.searchZipcode("강남대로");
		System.out.println(vec.size());
		//Run -> Run As Java Application 을 해보면 콘솔에 237이 출력되는 걸 확인할 수 있다.
	}
	
}
