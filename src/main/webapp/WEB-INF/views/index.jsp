<jsp:include page="../header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css">
<div class="d-flex align-items-center position-relative" style="height: 100vh; overflow: hidden;">
  	<video autoplay muted loop class="position-absolute" style="z-index: -1; min-width: 100%">
  		<source src="video/earth.mp4" type="video/mp4">
	</video>
  <div class="d-flex flex-column justify-content-center container">
    <h1 class="display-2 text-dark" style="font-weight: 1000;">Connecting the world and you</h1>
    <p class="fs-3 text-dark" style="font-weight: 700;">Find jobs suitable for your skills and knowledge and become a professional</p>
    <div class="d-flex align-items-start gap-4">
      <form action="registration" method="GET" class="input-group pe-4 border-end w-50">
        <input type="email" class="form-control" placeholder="Email Address" name="email">
        <button type="submit" class="btn btn-outline-primary input-group-text">Create Account</button>
      </form>
      <a href="login" class="btn btn-primary w-25 text-light fw-bold">I have an account</a>
    </div>
  </div>
</div>

<div class="container my-4 snap-container">
   <div class="d-flex flex-column justify-content-center mb-6" style="height: 25vh;">
    <small class="fs-3">Featured companies and organizations</small>
    <div class="d-flex justify-content-center align-items-center gap-5 mt-5" style="filter: grayscale(0);">
      <img src="images/meta.jpg" alt="Meta" height="120px"></img>
      <img src="images/google.png" alt="Google" height="60px"></img>
      <img src="images/github.jpg" alt="Github" height="100px"></img>
      <img src="images/stripe.png" alt="Stripe" height="90px"></img>
    </div>
  </div>
<hr style="border: 2px solid purple; border-radius: 2px;">
<br>
  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border border-warning">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-lock-alt fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-bolder">Keep it private</p>
      <h2 class="fs-1 fw-bold">Create private chats that only you know</h2>
    </div>
    <img src="images/chat.svg" width="450px" class="ms-auto">
  </div>
<br>
<br>
  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border border-primary">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-git-repo-forked fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-bolder">Connect</p>
      <h2 class="fs-1 fw-bold">Where connection is easy</h2>
    </div>
    <img src="images/connect.svg" width="450px" class="ms-auto">
  </div>
<br>
<br>
  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border border-success">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-group fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-bolder">Reputation</p>
      <h2 class="fs-1 fw-bold">From unknown to known</h2>
    </div>
    <img src="images/famous.svg" width="450px" class="ms-auto">
  </div>
</div>
<br>
<hr style="border: 2px solid purple; border-radius: 2px;">
<div class="d-flex flex-column align-items-center py-5 mt-5">
  <h1>Get Started</h1> <br>
  <a href="registration" class="btn btn-primary">Register Now!</a>
</div>

<jsp:include page="../footer.jsp"></jsp:include>