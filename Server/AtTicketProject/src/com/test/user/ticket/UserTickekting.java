package com.test.user.ticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/usertickekting.do")
public class UserTickekting extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HttpSession session = req.getSession();
		int mySeq = -1;
		//나의 seq 가져오기
		if (session.getAttribute("userseq") != null) {
			mySeq = (int)session.getAttribute("userseq");
		} 
		
		
		
		//String conSeq = req.getParameter("seq");//넘어온 공연seq(실전용)
		String conSeq = "2";//테스트용 공연


		//System.out.println("?!what");//왜 두번씩 나타나지?
		
		UserShowDAO dao = new UserShowDAO();
		UserShowDTO dto = new UserShowDTO();
		
		dto = dao.getShowInfo(conSeq);//해당번호에 해당하는 show 객체를 가져온다
		

		
		//--show 객체에 대한  공연건물이름,공연장소에 대한 데이터를 불러온다.
		List<String> showPlace = dao.getPlace(conSeq);
		//System.out.println(showPlace);
		String splaceName = showPlace.get(0);
		String splace = showPlace.get(1);
		
		
		//--관람시간을 가져올것이다.
		String showDuration = dao.getShowTerm(conSeq);
		
		
		//--티켓 가격을 넘길건데 ,를 붙여서 넘길것이다.
		String ticketPc = commaPrice(dto.getPrice());
		
		//--좋아요 수를 넘겨줄 것이다.
		String likeCount = dao.getLikes(conSeq);
		
		//내가 이미 좋아요를 누른 데이터인지 확인한다
		int likeTrue = dao.getLikeTrue(conSeq,mySeq);//0 또는 1이 나올것이다.
		
		
		//-- 주최 , 기획사 정보 , 전화번호 를 받아올 것이다.
		List<String> agencyInfo = dao.getAgencyInfo(conSeq);
		String agencyHost = agencyInfo.get(0);
		String agencyManage = agencyInfo.get(1);
		String agencyTel = agencyInfo.get(2);
		
		
		req.setAttribute("likeTrue", likeTrue);//내가 이미 좋아요를 눌렀는지 아닌지 확인.
		req.setAttribute("agencyHost", agencyHost);//주최 이름
		req.setAttribute("agencyManage", agencyManage);//주관 이름
		req.setAttribute("agencyTel", agencyTel);//문의번호
		req.setAttribute("likeCount",likeCount);//좋아요 수를 넘겨줄 것이다.
		req.setAttribute("ticketPc", ticketPc);//티켓 가격을 넘겨준다.
		req.setAttribute("showDuration", showDuration);//공연 시간 기간
		req.setAttribute("splaceName", splaceName);//show 공연 장소이름
		req.setAttribute("splace", splace);//show 공연 장소 주소
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userticketing.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	//가격에 ,를 찍어주기 위함이다.
	public static String commaPrice(String price) {
		
		int priceLen = price.length();
		
		String newPrice = "";
		int count = 0;
		
		for (int i = priceLen- 1; i >= 0 ; i--) {
			count++;
			
			if (i!=0) {
				newPrice = price.charAt(i) + newPrice;
				if (count == 3) {
					newPrice = "," + newPrice;
					count = 0;

				}
			} else {
				newPrice = price.charAt(i) + newPrice;
			}
		}
		
		return newPrice;
	}
	
}
