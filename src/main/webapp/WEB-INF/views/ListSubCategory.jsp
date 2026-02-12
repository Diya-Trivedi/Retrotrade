<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SubCategory List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>SubCategory List</h3>
        <a href="newSubCategory" class="btn btn-primary">+ Add SubCategory</a>
    </div>

    <!-- Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Sr.No</th>
                <th>SubCategory Name</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>

            <c:if test="${empty subCategoryList}">
                <tr>
                    <td colspan="4" class="text-center text-muted">
                        No subcategories found
                    </td>
                </tr>
            </c:if>

            <c:forEach var="sub" items="${subCategoryList}" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${sub.subCategoryName}</td>
                    
                    <td>
                        <c:choose>
                            <c:when test="${sub.active}">
                                <span class="badge bg-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-danger">Inactive</span>   
                            </c:otherwise>
                        </c:choose>
                    </td>

                    <td>
                        <a href="editSubCategory?id=${sub.subcategoryId}"
                           class="btn btn-sm btn-warning">Edit</a>

                        <a href="deleteSubCategory?subcategoryId=${sub.subcategoryId}" 
                        
                           class="btn btn-sm btn-danger"
                           onclick="return confirm('Are you sure you want to delete this subcategory?')">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>

</div>

</body>
</html>
