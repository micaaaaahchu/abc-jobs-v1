<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Registration" name="HTMLtitle" />
</jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css">
<div class="d-flex justify-content-center">
  <div class="col-5 px-5 py-2 d-flex flex-column justify-content-center">
    <h1> New User Registration</h1>
    <p>Already have an account? <a href="login">Login</a></p>

    <div class="alert alert-danger ${errMsg != null ? " d-block" : "d-none" }" role="alert">
      ${errMsg}
    </div>

    <form:form action="registration" method="post" modelAttribute="registration">
      <div class="mb-3">
        <label for="firstName" class="form-label">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" required>
        <div class="invalid-feedback">
          First Name is required
        </div>
      </div>

      <div class="mb-3">
        <label for="lastName" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" required>
        <div class="invalid-feedback">
          Last Name is required
        </div>
      </div>

      <div class="mb-3">
        <label for="emailAddresss" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailAddress" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>" required>
        <div class="invalid-feedback">
          Email address should be have @ and .
        </div>
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
        <div class="invalid-feedback">
          Password required & must be match
        </div>
      </div>

      <div class="mb-3">
        <label for="passwordConfirmation" class="form-label">Password Confirmation</label>
        <input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" required>
        <div class="invalid-feedback">
          Password required & must be match
        </div>
      </div>
      <button type="submit" class="btn btn-primary w-100">Register</button>
    </form:form>
  </div>
</div>
<br>
<br>
<br>

<jsp:include page="../../footer.jsp"></jsp:include>