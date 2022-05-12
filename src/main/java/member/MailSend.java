package member;

public class MailSend {

	public boolean sendPwd(String emailaddr) {
	//�������� id�� email�� �Է¹�����, true�� �����ϸ鼭 ������ ����.	
		
		boolean flag=false;
		MemberMgr1 mgr=new MemberMgr1();
		Boolean fullemail=mgr.findId(emailaddr);
		
		if(fullemail=true) {
			String title="OOO.com���� id�� pwd�� �����߽��ϴ�!!";
			String content="인증번호는 789입니다";
			GmailSend.send(title, content, emailaddr);
			flag=true;
		}
		return flag;
	}
	
}











