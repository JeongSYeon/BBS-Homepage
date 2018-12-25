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
        <li><a class="menuLink" href="main.jsp" style="color: red;">메인</a></li>
        <li><a class="menuLink" href="bbs.jsp">게시판</a></li>
        <li><a class="menuLink" href="login.jsp">로그인</a></li>
        <li><a class="menuLink" href="InfoInput.jsp">회원가입</a></li>
      </ul>
    </nav>
    <BR>
      <p>
        <font size=6>서경대학교 컴퓨터 과학과 게시판입니다.</font><br>
        <font size=5> 게시판에 글을 쓰려면 로그인 또는 회원 가입을 해주세요</font>
      </p><hr>
    <form action="loginAction.jsp" method="post">
      아이디 : <input type="text" name="userID"><br>
      비밀번호 : <input type="password" name="userPassword"><br>
      <INPUT TYPE=SUBMIT VALUE='로그인'>
    </form>
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
        <font size=6>서경대학교 컴퓨터 과학과 게시판입니다.</font><br>
        <font size=5> 회원 관리</font>
      </p><hr>
    <form action="logoutAction.jsp" method="post">
      <INPUT TYPE=SUBMIT VALUE='로그아웃'>
    </form>

    <%
  }
    %>

  </body>
</html>
