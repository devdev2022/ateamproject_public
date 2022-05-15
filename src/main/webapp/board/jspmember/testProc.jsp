<%@page import="java.util.Vector"%>
<%@page import="member.MemberBean1"%>
<%@page contentType="text/html; charset=EUC-KR"%>


<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		String id=request.getParameter("testid");
		String pw=request.getParameter("testpw");
		
		Vector<MemberBean1> vlist=new Vector<MemberBean1>();
		vlist=mgr.listMember();
		out.print(vlist.size()); //행 크기 보여줌.
%>

<%
  for(int i=0; i<vlist.size(); i++){
	  MemberBean1 bean=vlist.get(i);
	  %>	  
	  	<table  width="1120" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0">
	     <tr>
	     <td> :<%=bean.getId()%></td>	
	     <td> :<%=bean.getPwd()%></td>	
	     <td> :<%=bean.getName()%></td>	
	     <td> :<%=bean.getEmail1()%></td>	
	     <td> :<%=bean.getEmail2()%></td>	
	     <td>:<%=bean.getPhonecorp()%></td>	
	     <td> :<%=bean.getPhone1()%></td>	
	     <td> :<%=bean.getPhone2()%></td>	
	     <td> :<%=bean.getPhone3()%></td>	
	     <td> :<%=bean.getGrade()%></td>	
	     <td> :<%=bean.getImgname()%></td>	
	     <td> :<%=bean.getImgsize()%></td>	
	  
	   
	   </tr>
	</table>
	 
	
  <%}//--for %>
  
  