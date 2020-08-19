<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        html {
            /* border: 1px solid black; */
            width : 900px;
            /* height : 900px; */
            min-height: 500px;
        }
        /* 회원이 적은 제목 */
        #title {
            /* border: 1px solid black; */
            width : 700px;
            height: 30px;
            margin-top : 10px;
            margin-left : 10px;
            font-weight : bold;
            font-size: 2em;
        }   
        /* 줄 나누는곳 */
        .splitLine {
            border: 1px solid #F0F0F0;
            /* color : #111; */
        }
        /* 고객정보 */
        #cusotomerInfo {
            width : 700px;
            height : 45px;
            margin-left : 10px;
            margin-top : 25px;
            /* border : 1px solid red; */
        }
        /* 고객 얼굴 */
        #face {
            background-image: url("../images/woman.png");
            width : 40px;
            height: 40px;
            background-repeat: no-repeat;
            background-size: cover;
            border: 1px solid #F0F0F0;
            border-radius: 100%;
            float : left;
        }
        .csinfo {
            /* border: 1px solid red; */
            float : left;
            margin-left : 10px;
            margin-top : 10px;
            font-weight: bold;
        }
        
        .btn {
        	float: right;
        }

</style>

</head>
<body>

    <div id = "title" >${dto.subject}</div>
    <div id = "cusotomerInfo">
        <div id = "face"></div>
        <div class = "csinfo">${dto.name}(${dto.id})</div>
        <div class = "csinfo">${dto.regdate}</div>
    </div>
    
          <p style="margin:45px 0px 0px 15px; font-size : 1.2em;">
          	${dto.content}
          </p>

    
          <style>
          #commentgo {
            font-size: 1.2em;  
            margin-left : 10px;
          }
          #commentgo:hover {
            cursor : pointer;
            font-weight: bold;
          }
          .commenttxt {
              margin-left : 10px;
          }
          .reply {
              margin-top : 10px;
          }
          .replyon {
              margin-top : 10px;
          }


      </style>

      
      <div id = "comment" style = "margin-top : 100px;">
        <!-- <span id = "commentgo">댓글쓰기</span> -->
        <hr class = "splitLine">

        <div class = "commenttxt">
        	
        	<div id ="textInput">
            	<span>${dto.ancontent}</span>
            	<textarea style='display:block; width: 870px; min-height:300px; resize:none; display: none;' id='textW'></textarea>
            </div>
            <div>${dto.anregdate}</div>
            
            <!-- 댓글달기 버튼 -->
            <c:if test="${empty dto.ancontent}">
            	<div class = "reply"><button class ="btn btn-default">답변하기</button></div>
            </c:if>
            
            <!-- 수정하기 버튼 -->
            <c:if test="${not empty dto.ancontent}">
            	<button class ="btn btn-default" id="reWrite">수정하기</button>
            	<button class ='btn btn-default' id='rwOk' style="display: none;">완료</button>
            </c:if>
            
            <div class = "replyon" style = "display : none;">
                <textarea style = "resize:none;" rows = "5" cols = "100"></textarea>
                <div><input type="submit"></div>
            </div> 
        </div>
        <div style="clear: both;"></div>
        <hr class = "splitLine">


      </div>

      <script>
          
          //답글달기
          var onoff = false;

          $(".reply").click(function(){

                if (onoff) {
                    $(".replyon").css("display","none");
                    onoff = false;
              
                } else {
                    $(".replyon").css("display","block");
                    onoff = true;
                }

          })

          //글쓰기
          $("#commentgo").click(function(){
                
            
          });
          
        
          
          $("#reWrite").click(function() {
			
        	  var txt = "${dto.ancontent}";
        	  txt = txt.replace(/<br>/gi, "\n");
        	  
        	  $("#textW").css("display","block");
        	  $("#textW").val(txt);
        	  
        	  $("#textInput span").css("display","none");
        	  
        	  $("#reWrite").css("display","none");
        	  $("#rwOk").css("display","block");
        	  
		  }); 
          
          $("#rwOk").click(function() {
        	  
        	  $("#reWrite").css("display","block");
        	  $("#textInput span").css("display","block");
        	  $("#rwOk").css("display","none");
        	  $("#textW").css("display","none");
        	  alert("수정이 완료되었습니다.");
        	  
          });

 
      </script>
    
    
    
    <img src="../images/title.png" alt="">

</body>
</html>