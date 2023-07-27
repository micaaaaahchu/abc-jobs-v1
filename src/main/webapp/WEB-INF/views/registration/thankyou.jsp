<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css">
<div class="container">
<div class="container d-flex justify-content-center">
            <div class="confirmation d-flex flex-column text-center">
              <i class="fa-solid fa-check text-success"></i>
              <h2 class="fw-semibold">Thank You!</h2>
              <p class="text-secondary">
              	Your account has been created and a verification email has been sent to 
              	<span class="text-primary"><%= request.getAttribute("email") %></span> 
              	    <h4>Thank you <span class="fw-bold">${email}</span> for your registration. <br> Your account has been created, verify your email to continue your journey with us.</h4>
              </p>
              <div class="wrapper">
                <a href="<%= request.getContextPath() %>">
                      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ver">CONTINUE</button>
                </a>
              </div>
            </div>
          </div>
</div>
<!-- Modal -->
<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<i class='bx bxs-envelope fs-2'></i>
      	<h2>Successful</h2>
      	<p>The link has been sent it to your email</p>
       	<a href="verified" class="btn btn-secondary">Continue</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>