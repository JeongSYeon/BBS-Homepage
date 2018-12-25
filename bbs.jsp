<%@page import="java.io.PrintWriter" %>
﻿<%@page import="bbs.BbsDAO" %>
﻿<%@page import="bbs.Bbs" %>
﻿<%@page import="java.util.ArrayList" %>
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
      int pageNumber = 1;
      if(request.getParameter("pageNumber") != null){
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
      }

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
              <th style="background-color:#eeeeee; text-align:center;" width="100">번호</th>
              <th style="background-color:#eeeeee; text-align:center;" width="300">제목</th>
              <th style="background-color:#eeeeee; text-align:center;" width="100">작성자</th>
              <th style="background-color:#eeeeee; text-align:center;" width="150">작성일</th>
            </tr>
          </thead>
          <tbody>
            <%
              BbsDAO bbsDAO = new BbsDAO();
              ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
              for (int i = 0; i< list.size() ; i++) {

            %>
            <tr>
            <td><%= list.get(i).getBbsID()%></td>
            <td><a href = "view.jsp?bbsID=<%=list.get(i).getBbsID() %>"> <%= list.get(i).getBbsTitle()%></a></td>
            <td><%= list.get(i).getUserID()%></td>
            <td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) +"시"+list.get(i).getBbsDate().substring(14,16) + "분"  %></td>
          </tr>
            <%
              }
            %>
          </tbody>
        </table>
        <form action="login.jsp">
          <INPUT TYPE=SUBMIT VALUE='글쓰기'>
        </form>
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
              <th style="background-color:#eeeeee; text-align:center;" width="100">번호</th>
              <th style="background-color:#eeeeee; text-align:center;" width="300">제목</th>
              <th style="background-color:#eeeeee; text-align:center;" width="100">작성자</th>
              <th style="background-color:#eeeeee; text-align:center;" width="150">작성일</th>
            </tr>
          </thead>
          <tbody>
            <%
              BbsDAO bbsDAO = new BbsDAO();
              ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
              for (int i = 0; i< list.size() ; i++) {

            %>
            <tr>
            <td><%= list.get(i).getBbsID()%></td>
            <td><a href = "view.jsp?bbsID=<%=list.get(i).getBbsID() %>"> <%= list.get(i).getBbsTitle()%></a></td>
            <td><%= list.get(i).getUserID()%></td>
            <td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) +"시"+list.get(i).getBbsDate().substring(14,16) + "분"  %></td>
          </tr>
            <%
              }
            %>
          </tbody>
        </table>
        <form action="write.jsp">
          <INPUT TYPE=SUBMIT VALUE='글쓰기'>
        </form>
      </div>

    <%
  }
    %>


  </body>
</html>
