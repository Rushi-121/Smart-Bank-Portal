<%@page import="com.demo.model.BankAcc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Account</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #ff9966, #ff5e62);
    height: 100vh;
}

.card {
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    animation: fadeIn 0.8s ease;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(30px);}
    to { opacity: 1; transform: translateY(0);}
}

.navbar {
    background: rgba(0,0,0,0.4);
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
    
    <div class="navbar-nav ms-auto">
      <a class="nav-link" href="home">Home</a>
      <a class="nav-link" href="view">Accounts</a>
    </div>
  </div>
</nav>

<%
    BankAcc b = (BankAcc) request.getAttribute("account");
%>

<!-- ✅ FORM -->
<div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">

    <div class="card p-4 col-md-5 bg-white">

        <h3 class="text-center mb-4 text-danger">Edit Account</h3>

        <form action="update" method="post">

            <div class="mb-3">
                <label>ID</label>
                <input type="text" name="id" value="<%=b.getId()%>" class="form-control" readonly>
            </div>

            <div class="mb-3">
                <label>Name</label>
                <input type="text" name="name" value="<%=b.getName()%>" class="form-control">
            </div>

            <div class="mb-3">
                <label>Account Number</label>
                <input type="text" name="accountnumber" value="<%=b.getAccountnumber()%>" class="form-control">
            </div>

            <div class="mb-3">
                <label>Account Type</label>
                <input type="text" name="acctype" value="<%=b.getAcctype()%>" class="form-control">
            </div>

            <div class="mb-3">
                <label>Balance</label>
                <input type="number" name="balance" value="<%=b.getBalance()%>" class="form-control">
            </div>

            <button type="submit" class="btn btn-danger w-100">Update Account</button>

        </form>

    </div>

</div>

</body>
</html>