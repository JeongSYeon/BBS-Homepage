<%@page import="java.io.PrintWriter" %>
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
            <td>1</td>
            <td>안녕하세요</td>
            <td>정성연</td>
            <td>2018-06-09</td>
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

      <form action="writeAction.jsp" method="post">
        <div class="">
          <table style="text-align:center; border: 1px solid #dddddd" >
            <thead>
              <tr>
                <th colspan="2"style="background-color:#eeeeee; text-align:center;" width="600">게시판 글쓰기 양식</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="text" name="bbsTitle" maxlength="50"  size="70" ></td>
              </tr>
              <tr>
                <td><textarea name="bbsContent" maxlength="2048" style="height:350px;" cols="80"></textarea></td>
              </tr>
            </tbody>
          </table>
          <input type="submit" value="글쓰기" >
        </div>
      </form>

    <%
  }
    %>


  </body>
</html>
