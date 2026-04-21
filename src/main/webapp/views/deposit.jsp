<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* 🌈 Gradient Background */
body {
    background: linear-gradient(135deg, #43cea2, #185a9d);
    height: 100vh;
    font-family: Arial, sans-serif;
}

/* Card Style */
.card {
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    animation: slideUp 0.8s ease;
}

/* Animation */
@keyframes slideUp {
    from {
        transform: translateY(40px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

/* Navbar */
.navbar {
    background: rgba(0,0,0,0.4) !important;
}
.navbar a {
    color: white !important;
}
</style>

</head>
<body>

<!-- ✅ NAVBAR -->
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand text-white fw-bold" href="#">Smart Bank</a>
    
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view">Accounts</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- ✅ FORM -->
<div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">

    <div class="card p-4 col-md-4 bg-white">

        <h3 class="text-center mb-4 text-success">Deposit Money</h3>

        <form action="deposit" method="post">

            <input type="hidden" name="id" value="${id}">

            <div class="mb-3">
                <label>Enter Amount</label>
                <input type="number" name="amount" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-success w-100">Deposit</button>

        </form>

    </div>

</div>

</body>
</html>