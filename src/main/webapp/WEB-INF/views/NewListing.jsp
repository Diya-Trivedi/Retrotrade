<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>New Listing</title>

    <!-- Admin CSS -->
    <jsp:include page="AdminCSS.jsp"></jsp:include>

    <style>
        body {
            background-color: #f4f6f9;
        }

        /* Center content beside sidebar */
        .main-content {
            margin-left: 240px; /* adjust according to sidebar width */
            padding-top: 100px; /* space below header */
            display: flex;
            justify-content: center;
        }

        .form-card {
            width: 600px;   /* Medium size */
            border-radius: 12px;
        }

        .card-header {
            border-radius: 12px 12px 0 0;
        }
    </style>
</head>

<body>

<!-- Header -->
<jsp:include page="AdminHeader.jsp"></jsp:include>

<!-- Sidebar -->
<jsp:include page="AdminSidebar.jsp"></jsp:include>

<!-- Main Content -->
<div class="main-content">

    <div class="card shadow form-card">
        <div class="card-header bg-dark text-white text-center">
            <h4 class="mb-0">Add New Listing</h4>
        </div>

        <div class="card-body">

            <form action="newListing" method="post">

                <div class="mb-3">
                    <label class="form-label">Listing Name</label>
                    <input type="text" name="listingName"
                           class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea name="description"
                              class="form-control" rows="3" required></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">Brand</label>
                    <input type="text" name="brand"
                           class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">Price</label>
                    <input type="number" step="0.01"
                           name="price" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Category</label>
                    <select name="categoryId" class="form-select" required>
                        <option value="">Select Category</option>
                        <c:forEach items="${categoryList}" var="c">
                            <option value="${c.categoryId}">
                                ${c.categoryName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Sub Category</label>
                    <select name="subcategoryId" class="form-select">
                        <option value="">Select Sub Category</option>
                        <c:forEach items="${subCategoryList}" var="sc">
                            <option value="${sc.subcategoryId}">
                                
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Product Condition</label>
                    <select name="productCondition" class="form-select" required>
                        <option value="">Select Condition</option>
                        <option value="New">New</option>
                        <option value="Used">Used</option>
                        <option value="Refurbished">Refurbished</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Location</label>
                    <input type="text" name="location"
                           class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Negotiable</label>
                    <select name="negotiable" class="form-select">
                        <option value="true">Yes</option>
                        <option value="false">No</option>
                    </select>
                </div>

                <input type="hidden" name="status" value="ACTIVE">
                <input type="hidden" name="sellerId" value="${sessionScope.userId}">

                <div class="text-end">
                    <button type="submit" class="btn btn-success">
                        Save Listing
                    </button>
                    <a href="listListing" class="btn btn-secondary">
                        Cancel
                    </a>
                </div>

            </form>

        </div>
    </div>

</div>

</body>
</html>
