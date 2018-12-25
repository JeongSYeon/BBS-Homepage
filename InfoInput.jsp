<html>
  <head>
    <meta http-equiv="content-Type" content="text/html;charset=euc-kr">
    <title> 회원 정보 입력 </title>
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
    <nav id=topMenu >
      <ul>
        <li><a class="menuLink" href="main.jsp">메인</a></li>
        <li><a class="menuLink" href="bbs.jsp">게시판</a></li>
        <li><a class="menuLink" href="login.jsp">로그인</a></li>
        <li><a class="menuLink" href="InfoInput.jsp"style="color: red;">회원가입</a></li>
      </ul>
    </nav>
    <br>
    <p>
      <font size=6> 회원 정보 입력</font>
    </p><hr>
    <form action="InfoInputAction.jsp" method="post">
      <table width=600 height=350 border=1 cellpadding=5>
      <tr>
        <td>아이디</td>
        <td>    <input type="text" name="userID" size=10></td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td><input type="password" name = "userPassword" size=10></td>
      </tr>
      <tr>
        <td>이름</td>
        <td><input type="text" name = "userName" size=10></td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td><input name="phone_0" value="02" size=2>
                -<input name="phone_1" size=4>
                -<input name="userPhone" size=4></td>
      </tr>
      <tr>
        <td>직업</td>
        <td><select name="userJob" size=1>
                  <option>학생</option>
                  <option>프로그래머</option>
                  <option>교수</option>
                  <option>개발자</option>
                  <option>DBA</option>
                  <option>보안</option>
                  <option>기타</option>
                </select></td>
      </tr>
      <tr>
        <td>성별</td>
        <td><input type="radio" name="userGender" value=MALE>남자
            <input type="radio" name="userGender" value=FEMALE>여자</td>
      </tr>
        <td>자기 소개하는 글</td>
        <td> <textarea name="userInfo" cols="60" rows="5">자기를 소개하는 글을 쓰세요</textarea></td>
      </tr>
      <tr>
        <td colspan=2 align=center>
        <input type="submit" value="등록하기">
      <input type="reset" value="취소하기"></td>
    </tr>
    </table>
    </form>
  </body>
</html>
