﻿<%@page import="java.io.PrintWriter" %>
<%@page import="bbs.Bbs" %>
<%@page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
  <head>
      <META http-equiv="Content-Type" content="text/html;charset=euc-kr">
    <title>로그인</title>
    <style>
    #topMenu ul li {
      list-style: none;
      color: white;
      background-color: #2d2d2d;
      float: left;
      line-height: 30px;
      vertical-align: middle;
      text-align: center;
    }
      #topMenu .menuLink {
        margin: 0 auto;
        text-decoration:none;
        color: white;
        display: block;
        width: 150px;
        font-size: 12px;
        font-weight: bold;
        font-family: "Trebuchet MS", Dotum, Arial;
      }
    </style>
  </head>
  <body>
    <%
      String userID=null;
      if(session.getAttribute("userID") != null){
        userID = (String)session.getAttribute("userID");
      }
      int bbsID = 0;
      if(request.getParameter("bbsID") != null){
          bbsID = Integer.parseInt(request.getParameter("bbsID"));
      }
      if(bbsID == 0){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href = 'bbs.jsp'");
        script.println("</script>");
      }
      Bbs bbs = new BbsDAO().getBbs(bbsID);
      if(userID == null){
    %>
    <nav id=topMenu >
      <ul>
        <li><a class="menuLink" href="main.jsp">메인</a></li>
        <li><a class="menuLink" href="bbs.jsp"style="color: red;">게시판</a></li>
        <li><a class="menuLink" href="login.jsp">로그인</a></li>
        <li><a class="menuLink" href="InfoInput.jsp">회원가입</a></li>
      </ul>
    </nav>
    <BR>
      <p>
        <font size=6> 게시판 </font>
      </p><hr>

      <div class="">
        <table style="text-align:center; border: 1px solid #dddddd" >
          <thead>
            <tr>
              <th colspan="3"style="background-color:#eeeeee; text-align:center;" width="600">게시판 글 보기</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td style="width:20%;">글제목</td>
              <td colspan="2"><%=bbs.getBbsTitle() %></td>
            </tr>
            <tr>
              <td>작성자</td>
              <td colspan="2"><%=bbs.getUserID() %></td>
            </tr>
            <tr>
              <td>작성 일자</td>
              <td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11,13) +"시"+bbs.getBbsDate().substring(14,16) + "분"  %></td>
            </tr>
            <tr>
              <td>내용</td>
              <td colspan="2" style="min-height:200px;"><%= bbs.getBbsContent() %></td>
            </tr>
          </tbody>
        </table>
        <a href="bbs.jsp">목록</a>
      </div>

    <%
  } else {
    %>

    <nav id=topMenu >
      <ul>
        <li><a class="menuLink" href="main.jsp">메인</a></li>
        <li><a class="menuLink" href="bbs.jsp">게시판</a></li>
        <li><a class="menuLink" href="logoutAction.jsp">로그아웃</a></li>
      </ul>
    </nav>
    <BR>
      <p>
        <font size=6> 게시판 </font>
      </p><hr>

        <div class="">
          <table style="text-align:center; border: 1px solid #dddddd" >
            <thead>
              <tr>
                <th colspan="3"style="background-color:#eeeeee; text-align:center;" width="600">게시판 글 보기</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="width:20%;">글제목</td>
                <td colspan="2"><%=bbs.getBbsTitle() %></td>
              </tr>
              <tr>
                <td>작성자</td>
                <td colspan="2"><%=bbs.getUserID() %></td>
              </tr>
              <tr>
                <td>작성 일자</td>
                <td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11,13) +"시"+bbs.getBbsDate().substring(14,16) + "분"  %></td>
              </tr>
              <tr>
                <td>내용</td>
                <td colspan="2" style="min-height:200px;"><%= bbs.getBbsContent() %></td>
              </tr>
            </tbody>
          </table>
          <a href="bbs.jsp">목록</a>
        </div>

    <%
  }
    %>


  </body>
</html>
