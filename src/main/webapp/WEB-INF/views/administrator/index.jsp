<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin Dashboard" name="HTMLtitle" />
</jsp:include>
<br>
<div class="container">
  <h1 class="text-center">Welcome back, ${adminName}</h1>
  <br>
  <a href="admin/send-bulk" class="btn btn-outline-primary d-flex justify-content-center">Send bulk email</a><br>
  <a href="admin/all-users" class="btn btn-outline-primary d-flex justify-content-center">Show all users</a>
</div>
<br>
<br>
<jsp:include page="../../footer.jsp"></jsp:include>