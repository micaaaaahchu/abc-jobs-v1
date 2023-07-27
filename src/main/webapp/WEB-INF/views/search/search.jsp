<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle" />
</jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css">
<div class="container">
    <form action="" method="get" class="mb-4">
    	<h1>Find other users</h1>
    	<input type="text" class="form-control" name="q" placeholder="Search Other" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
   	    <div id="searchHelp" class="form-text">Press enter to search</div>
    </form>

    <div>
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
	           <div>
	           	<h2>${s.getFirstName()} ${s.getLastName()}</h2>
	           	<p>${s.getTitle()}</p>
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-outline-info ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>