<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp"></c:import>

<h3>게시물 목록</h3>

<table>
    <thead>
    <tr>
        <th>#</th>
        <th>제목</th>
        <th>작성자</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${boardList}" var="board">
        <c: url value="/borard" var="viewLink">
            <c:param name="id" value="${board.id}"/>
        </c: url>
        <tr>
            <td>${board.id}</td>
            <td>${board.title}</td>
            <a href="/borard?id=${board.id}">
                    ${board.title}
            </a>
            <td>${board.writer}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
