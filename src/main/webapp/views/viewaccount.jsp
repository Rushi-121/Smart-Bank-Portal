<%@ page import="java.util.*" %>
<%@ page import="com.demo.model.BankAcc" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Accounts</title>

<!-- ✅ Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* 🌈 Background */
body {
    background: linear-gradient(135deg, #00c6ff, #0072ff);
    font-family: Arial;
}

/* Navbar */
.navbar {
    background: rgba(0,0,0,0.4);
}
.navbar a {
    color: white !important;
}

/* Table */
.table-container {
    background: white;
    padding: 20px;
    border-radius: 15px;
    margin-top: 30px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    animation: fadeIn 0.8s ease;
}

/* Animation */
@keyframes fadeIn {
    from {opacity:0; transform: translateY(30px);}
    to {opacity:1; transform: translateY(0);}
}

/* Popup */
#popup {
    display: none;
    position: fixed;
    top: 30%;
    left: 40%;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 0 15px gray;
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
      <a class="nav-link active" href="view">Accounts</a>
    </div>
  </div>
</nav>

<div class="container">

    <h2 class="text-center text-white mt-4">Client Accounts</h2>

    <div class="table-container">

        <table class="table table-bordered text-center">
            <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Account No</th>
                    <th>Type</th>
                    <th>Balance</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            <%
            List<BankAcc> list = (List<BankAcc>) request.getAttribute("list");

            if(list != null){
            for(BankAcc b : list){
            %>

            <tr>
                <td><%=b.getId()%></td>
                <td><%=b.getName()%></td>
                <td><%=b.getAccountnumber()%></td>
                <td><%=b.getAcctype()%></td>
                <td> <%=b.getBalance()%></td>

                <td>
                    <button class="btn btn-success btn-sm" onclick="openDeposit(<%=b.getId()%>)">Deposit</button>
                    <button class="btn btn-warning btn-sm" onclick="openWithdraw(<%=b.getId()%>)">Withdraw</button>
                    <a href="edit?id=<%=b.getId()%>" class="btn btn-primary btn-sm">Edit</a>
                    <a href="delete?id=<%=b.getId()%>" class="btn btn-danger btn-sm">Delete</a>
                   
                </td>
            </tr>

            <%
            }
            }
            %>
            </tbody>

        </table>

    </div>
</div>

<!-- ✅ POPUP -->
<div id="popup">
    <form id="popupForm" method="post">
        <input type="hidden" name="id" id="accId">

        <h4 id="popupTitle" class="mb-3"></h4>

        <input type="number" name="amount" class="form-control" placeholder="Enter Amount" required>

        <br>

        <button type="submit" class="btn btn-success">Submit</button>
        <button type="button" class="btn btn-secondary" onclick="closePopup()">Cancel</button>
    </form>
</div>

<!-- ✅ JS -->
<script>
function openDeposit(id) {
    document.getElementById("popup").style.display = "block";
    document.getElementById("accId").value = id;
    document.getElementById("popupTitle").innerText = "Deposit Money";
    document.getElementById("popupForm").action = "deposit";
}

function openWithdraw(id) {
    document.getElementById("popup").style.display = "block";
    document.getElementById("accId").value = id;
    document.getElementById("popupTitle").innerText = "Withdraw Money";
    document.getElementById("popupForm").action = "withdraw";
}

function closePopup() {
    document.getElementById("popup").style.display = "none";
}
</script>

</body>
</html>