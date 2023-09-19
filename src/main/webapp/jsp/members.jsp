
<%--
  Created by IntelliJ IDEA.
  User: hackc
  Date: 2023-09-19
  Time: 오후 11:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%
  MemberRepository memberRepository = MemberRepository.getInstance();
  List<Member> members = memberRepository.findAll();
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<a href="/index.html">메인</a>
<table>
  <thead>
  <th>id</th>
  <th>username</th>
  <th>age</th>
  </thead>
  <tbody>
  <% // 프로그램 로직으로 loop를 돌림. out도 예약어. 사용가능
    // JSP는 서버 내부에서 서블릿으로 변환해줌. 자바 코드를 그대로 사용할 수 있다.
    for (Member member : members) {
      out.write(" <tr>");
      out.write(" <td>" + member.getId() + "</td>");
      out.write(" <td>" + member.getUsername() + "</td>");
      out.write(" <td>" + member.getAge() + "</td>");
      out.write(" </tr>");
    }
  %>
  </tbody>
</table>
</body>
</html>
