<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Smart Bank App</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ✅ AOS Animation -->
<link href="https://unpkg.com/aos@2.3.4/dist/aos.css" rel="stylesheet">

<!-- ✅ Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- ✅ SweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>

/* Smooth Scroll */
html {
    scroll-behavior: smooth;
}

/* Hero Section */
.hero {
    height: 100vh;
    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
    url('https://images.unsplash.com/photo-1607944024060-0450380ddd33?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center/cover;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    color: white;
}

/* Navbar */
.navbar {
    background: rgba(0,0,0,0.7);
}
.navbar a {
    color: white !important;
}

/* Sections */
.section {
    padding: 80px 20px;
    text-align: center;
}

/* Cards */
.feature-card {
    background: white;
    color: black;
    border-radius: 15px;
    padding: 20px;
    transition: 0.4s;
}
.feature-card:hover {
    transform: scale(1.08);
    box-shadow: 0 10px 25px rgba(0,0,0,0.4);
}

/* Image hover */
img {
    transition: 0.4s;
}
img:hover {
    transform: scale(1.08);
    box-shadow: 0 10px 25px rgba(0,0,0,0.5);
}

</style>

</head>
<body onload="showWelcome()">

<!-- ✅ NAVBAR -->
<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand text-white fw-bold" href="#">🏦 Smart Bank</a>

    <div class="navbar-nav ms-auto">
      <a class="nav-link" href="#">Home</a>
      <a class="nav-link" href="#about">About</a>
      <a class="nav-link" href="#features">Services</a>
      <a class="nav-link" href="log">Login</a>
      <a class="nav-link" href="create">Create Account</a>
    </div>
  </div>
</nav>

<!-- ✅ HERO -->
<div class="hero text-center">
    <h1 data-aos="fade-down">Welcome To Smart Bank 🏦</h1>
    <p data-aos="fade-up">Secure • Fast • Reliable Banking System</p>

    <div data-aos="zoom-in">
        <a href="log" class="btn btn-success m-2">Login</a>
        <a href="create" class="btn btn-primary m-2">Create Account</a>
         <a href="Register" class="btn btn-primary m-2">Register</a>
    </div>
</div>

<!-- ✅ ABOUT -->
<div id="about" class="section bg-dark text-white" data-aos="fade-up">
    <h2>About Us</h2>
    <p>
        Smart Bank provides secure and modern banking services with easy account management,
        fast transactions, and reliable security systems.
    </p>
</div>

<!-- ✅ SERVICES -->
<div id="features" class="section bg-light text-dark">
    <h2 class="mb-4" data-aos="fade-down">Our Services</h2>

    <div class="container">
        <div class="row g-4">

            <div class="col-md-4" data-aos="zoom-in">
                <div class="feature-card">
                    <h4><i class="fa fa-user"></i> Account Management</h4>
                    <p>Create and manage accounts easily.</p>
                </div>
            </div>

            <div class="col-md-4" data-aos="zoom-in">
                <div class="feature-card">
                    <h4><i class="fa fa-money-bill"></i> Deposit Money</h4>
                    <p>Fast and secure deposits.</p>
                </div>
            </div>

            <div class="col-md-4" data-aos="zoom-in">
                <div class="feature-card">
                    <h4><i class="fa fa-credit-card"></i> Withdraw Money</h4>
                    <p>Safe withdrawals with validation.</p>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- ✅ STATS -->
<div class="section bg-primary text-white">
    <div class="container">
        <div class="row">

            <div class="col-md-4" data-aos="fade-up">
                <h2>10K+</h2>
                <p>Customers</p>
            </div>

            <div class="col-md-4" data-aos="fade-up">
                <h2>₹50M+</h2>
                <p>Transactions</p>
            </div>

            <div class="col-md-4" data-aos="fade-up">
                <h2>99%</h2>
                <p>Security</p>
            </div>

        </div>
    </div>
</div>

<!-- ✅ IMAGE SECTION -->
<div class="section bg-dark text-white">
    <h2 data-aos="fade-up">Our Banking Experience</h2>

    <div class="container mt-4">
        <div class="row">

            <div class="col-md-4" data-aos="zoom-in">
                <img src="https://images.unsplash.com/photo-1563013544-824ae1b704d3" class="img-fluid rounded">
            </div>

            <div class="col-md-4" data-aos="zoom-in">
                <img src="https://images.unsplash.com/photo-1501167786227-4cba60f6d58f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid rounded">
            </div>

            <div class="col-md-4" data-aos="zoom-in">
                <img src="https://images.unsplash.com/photo-1550565118-3a14e8d0386f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="img-fluid rounded">
            </div>

        </div>
    </div>
</div>

<!-- ✅ FOOTER -->
<div class="section bg-black text-white">
    <p>© 2026 Smart Bank | All Rights Reserved</p>
</div>

<!-- ✅ SCRIPTS -->
<script src="https://unpkg.com/aos@2.3.4/dist/aos.js"></script>
<script>
AOS.init();

// SweetAlert Welcome
function showWelcome(){
    Swal.fire({
        title: 'Welcome!',
        text: 'Welcome to Smart Bank Application 🏦',
        icon: 'success',
        confirmButtonColor: '#3085d6'
    });
}
</script>

</body>
</html>