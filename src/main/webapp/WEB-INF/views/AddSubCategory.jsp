<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Subcategory | RetroTrade</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f1f3f6;
        }
    </style>
</head>

<body>

<!-- 🔵 NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold"
           href="${pageContext.request.contextPath}/dashboard">
            RetroTrade
        </a>
    </div>
</nav>

<!-- 🟢 ADD SUBCATEGORY FORM -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">

            <div class="card shadow-sm">
                <div class="card-header bg-success text-white text-center">
                    <h5 class="mb-0">Add New Subcategory</h5>
                </div>

                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/savesubcategory"
                          method="post">

                        <!-- Subcategory Name -->
                        <div class="mb-3">
                            <label class="form-label">Subcategory Name</label>
                            <input type="text"
                                   name="subcategoryName"
                                   class="form-control"
                                   placeholder="Enter subcategory name"
                                   required>
                        </div>

                        <!-- Buttons -->
                        <div class="d-grid">
                            <button type="submit"
                                    class="btn btn-primary">
                                Save Subcategory
                            </button>
                        </div>

                    </form>
                </div>

                <div class="card-footer text-center">
                    <a href="${pageContext.request.contextPath}/dashboard"
                       class="text-decoration-none">
                        ← Back to Dashboard
                    </a>
                </div>

            </div>

        </div>
    </div>
</div>

<!-- 🔻 FOOTER -->
<footer class="bg-dark text-white text-center p-3 mt-5">
    © 2026 RetroTrade
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
