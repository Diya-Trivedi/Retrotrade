<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #1cc88a, #4e73df);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .signup-card {
            border-radius: 15px;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-sm-10 col-md-8 col-lg-5">

            <div class="card signup-card shadow p-4">
                <h3 class="text-center mb-4">Create Account</h3>

                <form action="register" method="post">

                    <!-- First Name -->
                    <div class="mb-3">
                        <label class="form-label">First Name</label>
                        <input type="text" name="firstName" class="form-control"
                               placeholder="Enter first name" required>
                    </div>

                    <!-- Last Name -->
                    <div class="mb-3">
                        <label class="form-label">Last Name</label>
                        <input type="text" name="lastName" class="form-control"
                               placeholder="Enter last name" required>
                    </div>

                    <!-- Email -->
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control"
                               placeholder="Enter email" required>
                    </div>

                    <!-- Password -->
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control"
                               placeholder="Enter password" required>
                    </div>

                    <!-- Contact Number -->
                    <div class="mb-3">
                        <label class="form-label">Contact Number</label>
                        <input type="tel" name="contactNum" class="form-control"
                               placeholder="Enter contact number"
                               pattern="[0-9]{10}" required>
                        <div class="form-text">Enter 10 digit number</div>
                    </div>

                    <!-- City -->
                    <div class="mb-3">
                        <label class="form-label">City</label>
                        <input type="text" name="city" class="form-control"
                               placeholder="Enter city" required>
                    </div>

                    <!-- State -->
                    <div class="mb-3">
                        <label class="form-label">State</label>
                        <input type="text" name="state" class="form-control"
                               placeholder="Enter state" required>
                    </div>

                    <!-- Country -->
                    <div class="mb-3">
                        <label class="form-label">Country</label>
                        <select name="country" class="form-select" required>
                            <option value="">Select country</option>
                            <option value="1">India</option>
                            <option value="2">USA</option>
                            <option value="3">UK</option>
                            <option value="4">Canada</option>
                        </select>
                    </div>

                    <!-- Active -->
                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select name="active" class="form-select" required>
                            <option value="">Select status</option>
                            <option value="true">Active</option>
                            <option value="false">Inactive</option>
                        </select>
                    </div>

                    <!-- Submit -->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-success">
                            Sign Up
                        </button>
                    </div>

                    <!-- Login Link -->
                    <div class="text-center mt-3">
                        <span>Already have an account?</span>
                        <a href="login">Login</a>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
