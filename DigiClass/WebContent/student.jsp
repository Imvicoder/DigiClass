<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <h1>Welcome <%=request.getSession(false).getAttribute("username") %>
 <%-- <h1>You are <%=request.getSession(false).getAttribute("userRole") %></h1> 
Username : ${sessionScope.username}
<c:out value='${sessionScope.username}'/> --%>