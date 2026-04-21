<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>

<!-- ✅ Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* 🌈 Gradient Background */
body {
    background: linear-gradient(135deg, #00c6ff, #0072ff);
    height: 100vh;
    font-family: Arial, sans-serif;
}

/* 🧊 Glass Card */
.card {
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    animation: fadeIn 1s ease-in-out;
}

/* ✨ Animation */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
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
          <a class="nav-link active" href="create">Create Account</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view">View Accounts</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- ✅ FORM -->
<div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">

    <div class="card p-4 col-md-5 bg-white">

        <h3 class="text-center mb-4">Create Account</h3>

        <form action="save" method="post">

            <div class="mb-3">
                <label>Account Id</label>
                <input type="number" name="id" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Account Holder Name</label>
                <input type="text" name="name" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Account Number</label>
                <input type="text" name="accountnumber" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Account Type</label>
                <input type="text" name="acctype" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Balance</label>
                <input type="number" name="balance" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Create Account</button>

        </form>

    </div>

</div>

</body>
</html>