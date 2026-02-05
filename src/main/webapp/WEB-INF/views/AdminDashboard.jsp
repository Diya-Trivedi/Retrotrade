<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | RetroTrade</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f6f9;
        }

        /* Sidebar */
        .sidebar {
            height: 100vh;
            background: #212529;
            color: white;
            position: fixed;
            width: 220px;
        }

        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            display: block;
            padding: 12px 20px;
        }

        .sidebar a:hover,
        .sidebar a.active {
            background: #343a40;
            color: white;
        }

        /* Main content */
        .main-content {
            margin-left: 220px;
        }
    </style>
</head>

<body>

<!-- 🔵 HEADER -->
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand fw-bold">
            Admin Panel | RetroTrade
        </span>
        <a href="${pageContext.request.contextPath}/logout"
           class="btn btn-danger btn-sm">
            Logout
        </a>
    </div>
</nav>

<!-- 🟣 SIDEBAR -->
<div class="sidebar">
    <h5 class="text-center py-3 border-bottom">
        ADMIN MENU
    </h5>

    <a href="#" class="active">Dashboard</a>
    <a href="#">Manage Users</a>
    <a href="#">Manage Categories</a>
    <a href="#">Manage Listings</a>
    <a href="#">Reports</a>
</div>

<!-- 🟢 MAIN CONTENT -->
<div class="main-content">

    <div class="container-fluid mt-4">

        <h3 class="mb-4">Welcome Admin 👋</h3>

        <!-- Dashboard Cards -->
        <div class="row g-4">

            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body text-center">
                        <h6>Total Users</h6>
                        <h4 class="text-primary">120</h4>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body text-center">
                        <h6>Total Listings</h6>
                        <h4 class="text-success">75</h4>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body text-center">
                        <h6>Categories</h6>
                        <h4 class="text-warning">10</h4>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body text-center">
                        <h6>Reports</h6>
                        <h4 class="text-danger">5</h4>
                    </div>
                </div>
            </div>

        </div>

        <!-- Demo Section -->
        <div class="card mt-4 shadow-sm">
            <div class="card-body">
                <h5>Admin Dashboard</h5>
                <p class="text-muted">
                    This is a demo admin panel layout.  
                    You can connect real data from database later.
                </p>
            </div>
        </div>

    </div>

</div>

<!-- 🔻 FOOTER -->
<footer class="bg-dark text-white text-center p-3 mt-4">
    © 2026 RetroTrade Admin Panel
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
