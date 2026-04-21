<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Smart Bank</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>

/* 🌈 Gradient Flow */
body {
    height: 100vh;
    margin: 0;
    font-family: Arial;
    background: linear-gradient(-45deg, #1e3c72, #2a5298, #00c6ff, #0072ff);
    background-size: 400% 400%;
    animation: gradientFlow 10s ease infinite;
}

@keyframes gradientFlow {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* Layout */
.main-box {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.login-card {
    display: flex;
    width: 850px;
    border-radius: 20px;
    overflow: hidden;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(15px);
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
}

/* Image */
.image-side {
    width: 50%;
    background: url('https://images.unsplash.com/photo-1601597111158-2fceff292cdc') center/cover;
}

/* Form */
.form-side {
    width: 50%;
    padding: 40px;
    color: white;
}

/* Input */
input {
    background: rgba(255,255,255,0.2) !important;
    border: none !important;
    color: white !important;
}

/* Button */
.btn-login {
    background: linear-gradient(45deg, #00c6ff, #0072ff);
    border: none;
}

/* Links */
.link {
    color: #00c6ff;
    cursor: pointer;
    font-size: 14px;
}

</style>

</head>
<body onload="welcomeAlert()">

<div class="main-box">

    <div class="login-card">

        <!-- IMAGE -->
        <div class="image-side"></div>

        <!-- FORM -->
        <div class="form-side">

            <h3 class="text-center mb-4">🔐 Login</h3>

            <!-- ERROR -->
            <%
            String error = (String) request.getAttribute("error");
            if(error != null){
            %>
            <script>
                Swal.fire('Error','<%=error%>','error');
            </script>
            <%
            }
            %>

            <form action="login" method="post">

                <input type="text" name="username" class="form-control mb-3"
                       placeholder="Username" required>

                <input type="password" name="password" class="form-control mb-3"
                       placeholder="Password" required>

                <!-- ✅ REMEMBER ME -->
                <div class="mb-3">
                    <input type="checkbox"> Remember Me
                </div>

                <button class="btn btn-login w-100 text-white">Login</button>

            </form>

            <!-- ✅ FORGOT PASSWORD -->
            <div class="text-center mt-3">
                <span class="link" onclick="forgotPassword()">Forgot Password?</span>
            </div>

        </div>

    </div>

</div>

<!-- JS -->
<script>

// Welcome Alert
function welcomeAlert(){
    Swal.fire({
        title: 'Welcome 👋',
        text: 'Login to Smart Bank',
        icon: 'info'
    });
}

// Forgot Password Popup
function forgotPassword(){
    Swal.fire({
        title: 'Reset Password',
        input: 'email',
        inputLabel: 'Enter your email',
        showCancelButton: true,
        confirmButtonText: 'Send Reset Link'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire('Success','Reset link sent!','success');
        }
    });
}

</script>

</body>
</html>