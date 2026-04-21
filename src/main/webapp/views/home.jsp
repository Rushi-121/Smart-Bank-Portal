<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* 🌈 Gradient Background */
body {
    background: linear-gradient(135deg, #1e3c72, #2a5298);
    font-family: Arial, sans-serif;
}

/* Navbar */
.navbar {
    background: rgba(0,0,0,0.4);
}
.navbar a {
    color: white !important;
}

/* Cards */
.card-box {
    border-radius: 15px;
    padding: 30px;
    color: white;
    text-align: center;
    transition: 0.3s;
    cursor: pointer;
    animation: fadeIn 1s ease;
}

.card-box:hover {
    transform: scale(1.05);
}

/* Different Colors */
.view { background: #28a745; }
.create { background: #007bff; }
.deposit { background: #17a2b8; }
.withdraw { background: #ffc107; color:black; }

/* Animation */
@keyframes fadeIn {
    from {opacity:0; transform: translateY(30px);}
    to {opacity:1; transform: translateY(0);}
}
</style>

</head>
<body>

<!-- ✅ NAVBAR -->
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand text-white fw-bold" href="#">Smart Bank</a>

    <div class="navbar-nav ms-auto">
      <a class="nav-link" href="home">Home</a>
      <a class="nav-link" href="create">Create Account</a>
      <a class="nav-link" href="view">Accounts</a>
       <a class="nav-link" href="logout">logout</a>
    </div>
  </div>
</nav>

<!-- ✅ DASHBOARD -->
<div class="container mt-5">

    <h2 class="text-center text-white mb-4">Welcome To Smart Bank</h2>

    <div class="row g-4">

        <!-- View Accounts -->
        <div class="col-md-3">
            <a href="view" style="text-decoration:none;">
                <div class="card-box view">
                    <h4>View Accounts</h4>
                    <p>Check all customers</p>
                </div>
            </a>
        </div>

        <!-- Create Account -->
        <div class="col-md-3">
            <a href="create" style="text-decoration:none;">
                <div class="card-box create">
                    <h4>Create Account</h4>
                    <p>Add new customer</p>
                </div>
            </a>
        </div>

        <!-- Deposit -->
        <div class="col-md-3">
            <a href="view" style="text-decoration:none;">
                <div class="card-box deposit">
                    <h4>Deposit</h4>
                    <p>Add money</p>
                </div>
            </a>
        </div>

        <!-- Withdraw -->
        <div class="col-md-3">
            <a href="view" style="text-decoration:none;">
                <div class="card-box withdraw">
                    <h4>Withdraw</h4>
                    <p>Remove money</p>
                </div>
            </a>
        </div>

    </div>

</div>

</body>
</html>