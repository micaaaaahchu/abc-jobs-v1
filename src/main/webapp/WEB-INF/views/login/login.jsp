<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css">
<br>
<div class="d-flex justify-content-center vh-50">
  <div class="col-5 px-5 py-5 d-flex flex-column justify-content-center">
    <h1>Sign in to your account</h1>
    <p>Don't have an account yet? <a href="registration">Register Now</a></p>

    <small class="fs-6">Sign in with</small>
    <div class="d-flex gap-3 my-2">
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-github'></i></a>
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-google' ></i></a>
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-twitter' ></i></a>
    </div>

    <div class="position-relative border my-3">
      <small class="fs-6 bg-white px-2 position-absolute" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">Or continue with</small>
    </div>

    <div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? " d-none" : "d-block" }" role="alert">
      ${ message }
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? " d-none" : "d-block" }" role="alert">
      ${ scMessage }
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <form:form action="login" method="post">
      <div class="mb-3">
        <label for="emailAddress" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailAddress" name="email" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="d-flex flex-column">
        <div class="d-flex">
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
            <label class="form-check-label" for="rememberMe">Remember Me</label>
          </div>
          <a href="forgot-password" class="ms-auto">Forgot password?</a>
        </div>
        <button type="submit" class="btn btn-primary">Log in</button>
      </div>
    </form:form>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="../../footer.jsp"></jsp:include>