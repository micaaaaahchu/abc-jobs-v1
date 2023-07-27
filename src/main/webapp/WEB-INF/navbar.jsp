
<nav class="navbar navbar-expand-lg d-flex flex-column align-items-center w-100 pb-0 <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "position-absolute" : "mb-5 shadow-sm border" %>" style="z-index: 1000;">
  <div class="container">
    <a class="navbar-brand fs-3 display-6 fw-bolder <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark" %>" href="home"><span><i class='bx bxl-blender'></i></span> <span class="">ABC</span> Jobs</a>
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbar">
       <form action="<%= request.getContextPath() %>/search" method="get" class="w-75">
       		<input type="text" class="form-control" placeholder="Search something..." name="q" autocomplete="off" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-title="Tips" data-bs-content="Press enter to continue">
       </form>
    </div>
    <div class="ms-auto d-flex gap-3">
    <% if( (Boolean) session.getAttribute("isLogin") != null) { %>
      <a href="<%= request.getContextPath() %>/logout" class="btn btn-dark ms-auto">Logout</a>
    <% } else { %>
      <a href="<%= request.getContextPath() %>/login" class="btn btn-outline-primary ms-auto <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "d-none" : "" %>">Login</a>
      <a href="<%= request.getContextPath() %>/registration" class="btn btn-primary ms-auto <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "d-none" : "" %>">Register</a>
    <% } %>
    </div>
  </div>
  <div class="container border-top pt-2 px-0 mt-2 mb-0">
    <ul class="navbar-nav d-flex justify-content-center gap-3">
    
      <li class="nav-item">
        <a class="nav-link fw-bolder <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark" %>" href="<%= request.getContextPath() %>/home">Home</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link fw-bolder <%= request.getServletPath().equals("/WEB-INF/views/search/search.jsp") ? "text-primary border-bottom border-3 border-primary" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark border-bottom border-3  border-white" %>" href="<%= request.getContextPath() %>/search">Search</a>
      </li>
      
      <% if((Boolean) session.getAttribute("isLogin") != null) { %>
        <li class="nav-item">
          <a class="nav-link fw-bolder <%= request.getServletPath().equals("/WEB-INF/views/dashboard/index.jsp") ? "text-primary border-bottom border-3 border-primary" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark border-bottom border-3  border-white" %>" href="<%= request.getContextPath() %>/dashboard">Dashboard</a>
        </li>
      <% } %>
      
      <% if((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) { %>
        <li class="nav-item">
          <a class="nav-link fw-bolder <%= request.getServletPath().equals("/WEB-INF/views/administrator/index.jsp") ? "text-primary border-bottom border-3 border-primary" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white" : "text-dark border-bottom border-3  border-white" %>" href="<%= request.getContextPath() %>/admin">Admin</a>
        </li>
      <% } %>
      
    </ul>
    
  </div>
</nav>
