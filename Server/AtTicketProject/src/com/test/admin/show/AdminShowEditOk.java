package com.test.admin.show;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/adminshoweditok.do")
public class AdminShowEditOk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//공연 추가
		//1. 상영관 찾기 > 번호 가져오기
		//2. 데이터 추가하기
		// - 공연 테이블 + 회차정보 테이블 + 태그 테이블
		
		req.setCharacterEncoding("UTF-8");
		
		
		//파일 업로드
		String path = req.getRealPath("/images");
		System.out.println(path);
		int size = 1024 * 1024 * 10; //100MB
		String filename = ""; //첨부파일명
		String orgfilename = ""; //첨부파일명
		String filename2 = ""; //첨부파일명
		String orgfilename2 = ""; //첨부파일명

		MultipartRequest multi = new MultipartRequest(	req, //기존의 request 객체
				path, //업로드 폴더
				size, //업로드 크기
				"UTF-8", //인코딩
				new DefaultFileRenamePolicy() //파일이 같은 이름이면 넘버링해줌
				);
		
		try {
			filename = multi.getFilesystemName("poster");
			orgfilename = multi.getOriginalFileName("poster"); //내려받을땐 원본이름으로 받게 하기 위한 이름 저장 변수

			//첨부파일명
			filename2 = multi.getFilesystemName("showcontent");
			orgfilename2 = multi.getOriginalFileName("showcontent"); //내려받을땐 원본이름으로 받게 하기 위한 이름 저장 변수
		} catch (Exception e) {
			System.out.println(e);
		}
		
		String seq = multi.getParameter("seq");
		String genre = multi.getParameter("genre");
		String title = multi.getParameter("name");
		String openDate = multi.getParameter("openDate");
		String startDate = multi.getParameter("startDate");
		String endDate = multi.getParameter("endDate");
		String price = multi.getParameter("price");
		int min = Integer.parseInt(multi.getParameter("min"));
		String age = multi.getParameter("age");
		String round = multi.getParameter("round");
		String time = multi.getParameter("time");
		String place = multi.getParameter("theater");
		String agency = multi.getParameter("agency");
		
		String round2 = multi.getParameter("round2");
		String time2 = multi.getParameter("time2");
		String round3 = multi.getParameter("round3");
		String time3 = multi.getParameter("time3");
		
		//tag
		String tag = multi.getParameter("tag");
		
		
		//파일 업로드 ????
		String content = filename2;
		String poster = filename;
		
		ShowDTO dto = new ShowDTO();
		
		dto.setSeq(seq);
		dto.setAge(age);
		dto.setAgency(agency);
		dto.setContent(content);
		dto.setEndDate(endDate);
		dto.setGenre(genre);
		dto.setOpenDate(openDate);
		dto.setPoster(poster);
		dto.setPrice(price);
		dto.setStartDate(startDate);
		dto.setTitle(title);
		dto.setMin(min);
		dto.setRound(round);
		dto.setTime(time);
		dto.setPlace(place);
		
		dto.setPoster(poster);
		dto.setContent(content);
		
		dto.setRound2(round2);
		dto.setTime2(time2);
		dto.setRound3(round3);
		dto.setTime3(time3);
		
		
		
		System.out.println("tag: " +tag);
		System.out.println("dto\n" + dto);
		
		//DB 넘기기
		ShowDAO dao = new ShowDAO();
		
		//2-1 공연 테이블 수정
		int resultShow = dao.editShow(dto);
		dto.setSeq(dao.searchSeq());

		//2-2 회차 테이블 수정
		int resultRound = dao.editRound(dto);
		
		//2-3 태그 테이블 수정
		TagDTO tdto = new TagDTO();
		tdto.setShowSeq(dto.getSeq());
		
		//태그 여러개로 반환받기
		String[] tags = tag.split(" ");
		tdto.setTags(tags);
		//태그 추가하기
		int resultTag = dao.editTag(tdto);
		
		
		
		//결과
		if(resultShow == 1 && resultRound == 1 && resultTag == 1) {
			//수정 성공 -> 뷰로 이동
			resp.sendRedirect("/AtTicketProject/adminshowview.do?seq="+seq);
		}else {
			//수정 실패
			System.out.println(resultShow + " " + resultRound + " " + resultTag);
			
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('edit failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
		
		
		
	}
	
}