<%@ page import="java.util.*" %>
<%@ page import="com.demo.model.BankAcc" %>


<!DOCTYPE html>
<html>
<head>
<title>Smart Bank Dashboard</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- AOS Animation -->
<link href="https://unpkg.com/aos@2.3.4/dist/aos.css" rel="stylesheet">

<!-- SweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>

/* 🌈 Animated Gradient Background */
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(-45deg, #1e3c72, #2a5298, #00c6ff, #0072ff);
    background-size: 400% 400%;
    animation: gradientFlow 12s ease infinite;
    color: white;
}

/* Gradient Animation */
@keyframes gradientFlow {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* NAVBAR */
.navbar {
    background: rgba(0,0,0,0.5);
    backdrop-filter: blur(10px);
}

/* 🌟 GLASS CARDS */
.card-box {
    border-radius: 15px;
    padding: 25px;
    text-align: center;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(12px);
    transition: 0.4s;
    border: 1px solid rgba(255,255,255,0.2);
}

.card-box:hover {
    transform: translateY(-10px) scale(1.05);
    box-shadow: 0 0 25px rgba(0, 198, 255, 0.7);
}

/* 🌟 RGB BORDER TABLE */
.table {
    background: rgba(255,255,255,0.95);
    border-radius: 10px;
    overflow: hidden;
    position: relative;
}

/* RGB Animated Border */
.table::before {
    content: "";
    position: absolute;
    inset: -2px;
    background: linear-gradient(45deg, red, blue, cyan, lime, magenta, yellow);
    background-size: 400%;
    z-index: -1;
    animation: borderFlow 6s linear infinite;
    border-radius: 12px;
}

@keyframes borderFlow {
    0% { background-position: 0% }
    100% { background-position: 400% }
}

/* Table Header */
.table th {
    background: #0072ff;
    color: white;
}

/* Row Hover */
.table tr:hover {
    background: #f1f1f1;
    transform: scale(1.01);
    transition: 0.3s;
}

/* Smooth Text Glow */
h2, h3, h5 {
    text-shadow: 0 0 10px rgba(0,198,255,0.7);
}
</style>

</head>
<body onload="welcome()">

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg px-4">
    <span class="navbar-brand text-white fw-bold">Smart Bank Dashboard</span>

    <div class="ms-auto">
        <a class="nav-link text-white d-inline" href="home">Home</a>
        <a class="nav-link text-white d-inline" href="create">Create</a>
        <a class="nav-link text-white d-inline" href="view">Accounts</a>
        <a href="logout" class="btn btn-danger btn-sm">Logout</a>
    </div>
</nav>

<div class="container mt-4">

    <!-- STATS -->
    <div class="row text-center">

        <div class="col-md-4" data-aos="zoom-in">
            <div class="card-box green">
                <h5>Total Accounts</h5>
                <h2>${accounts.size()}</h2>
            </div>
        </div>

        <div class="col-md-4" data-aos="zoom-in">
            <div class="card-box blue">
                <h5>Total Balance</h5>
                <%
                List<BankAcc> list = (List<BankAcc>) request.getAttribute("accounts");
                double total = 0;
                if(list != null){
                    for(BankAcc b : list){
                        total += b.getBalance();
                    }
                }
                %>
                <h2> <%=total%></h2>
            </div>
        </div>

        <div class="col-md-4" data-aos="zoom-in">
            <div class="card-box orange">
                <h5>Active Users</h5>
                <h2>${accounts.size()}</h2>
            </div>
        </div>

    </div>

    <!-- TABLE -->
    <div class="mt-5" data-aos="fade-up">
        <h3 class="mb-3">Transaction Records</h3>

        <table class="table table-bordered text-center shadow">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Account No</th>
                <th>Type</th>
                <th>Balance</th>
            </tr>

            <%
            if(list != null){
                for(BankAcc b : list){
            %>

            <tr>
                <td><%=b.getId()%></td>
                <td><%=b.getName()%></td>
                <td><%=b.getAccountnumber()%></td>
                <td><%=b.getAcctype()%></td>
                <td> <%=b.getBalance()%></td>
            </tr>

            <%
                }
            }
            %>

        </table>
    </div>

</div>

<!-- Scripts -->
<script src="https://unpkg.com/aos@2.3.4/dist/aos.js"></script>
<script>
AOS.init();

// Welcome Alert
function welcome(){
    Swal.fire({
        title: 'Dashboard Loaded 🚀',
        text: 'Welcome to Smart Bank Dashboard',
        icon: 'success',
        confirmButtonColor: '#00c6ff'
    });
}
</script>

</body>
</html>