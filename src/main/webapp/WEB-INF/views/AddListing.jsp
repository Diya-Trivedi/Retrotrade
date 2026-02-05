<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Add Product | RetroTrade</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-4">
    <div class="card shadow p-4">
        <h4 class="mb-3">Post Your Ad</h4>

        <form action="saveListing" method="post">

    <input type="text" name="listingName" class="form-control mb-2"
           placeholder="Product Name" required>

    <textarea name="description" class="form-control mb-2"
              placeholder="Description" required></textarea>

    <input type="text" name="brand" class="form-control mb-2"
           placeholder="Brand">

    <input type="number" step="0.01" name="price"
           class="form-control mb-2" placeholder="Price" required>

    <!-- CATEGORY -->
    <select name="categoryId" class="form-control mb-2" required>
        <option value="">-- Select Category --</option>
        <c:forEach items="${categories}" var="c">
            <option value="${c.categoryId}">
                ${c.categoryName}
            </option>
        </c:forEach>
    </select>

    <!-- SUB CATEGORY -->
    <select name="subCategoryId" class="form-control mb-2" required>
        <option value="">-- Select Sub Category --</option>
        <c:forEach items="${subCategories}" var="s">
            <option value="${s.subCategoryId}">
                ${s.subCategoryName}
            </option>
        </c:forEach>
    </select>

    <select name="condition" class="form-control mb-2">
        <option>NEW</option>
        <option>GOOD</option>
        <option>FAIR</option>
        <option>OLD</option>
    </select>

    <input type="text" name="location" class="form-control mb-2"
           placeholder="Location">

    <div class="form-check mb-3">
        <input type="checkbox" class="form-check-input" name="negotiable">
        <label class="form-check-label">Negotiable</label>
    </div>

    <button class="btn btn-primary w-100">Post Ad</button>
</form>
        
    </div>
</div>

</body>
</html>
