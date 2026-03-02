<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <jsp:include page="AdminCSS.jsp"></jsp:include>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <jsp:include page="AdminLeftSidebar.jsp"></jsp:include>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                 <jsp:include page="AdminHeader.jsp"></jsp:include>
                 
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    
                    <div class="text-center mb-4">
                    <h1 class="h3 mb-0 text-gray-800">View Listings</h1>
                    </div>
                    
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3"></div>
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<p class="m-0 font-weight-bold text-primary">All Listings</p>
										
									</div>

                     <!-- Content Row -->
                     
                
                     <div class="container mt-5">
    <div class="card shadow p-4">

        <!-- LISTING NAME -->
        <h2 class="text-primary mb-4">
            ${listing.listingName}
        </h2>

        <!--  BRAND -->
        <div class="mb-3">
            <span class="label">Brand:</span>
            ${listing.brand}
        </div>

        <!--  PRICE -->
        <div class="mb-3">
            <span class="label">Price:</span>
            ₹ ${listing.price}
        </div>

        <!-- CONDITION -->
        <div class="mb-3">
            <span class="label">Condition:</span>
            ${listing.productCondition}
        </div>

        <!--  LOCATION -->
        <div class="mb-3">
            <span class="label">Location:</span>
            ${listing.location}
        </div>

        <!--  CATEGORY NAME -->
        <div class="mb-3">
            <span class="label">Category:</span>
            <c:forEach items="${categoryList}" var="cat">
                <c:if test="${cat.categoryId == listing.categoryId}">
                    ${cat.categoryName}
                </c:if>
            </c:forEach>
        </div>

        <!--  SUBCATEGORY NAME -->
        <div class="mb-3">
            <span class="label">SubCategory:</span>
            <c:forEach items="${subCategoryList}" var="sub">
                <c:if test="${sub.subcategoryId == listing.subcategoryId}">
                    ${sub.subCategoryName}
                </c:if>
            </c:forEach>
        </div>

        <!-- STATUS -->
        <div class="mb-3">
            <span class="label">Status:</span>
            <c:choose>
                <c:when test="${listing.status == 'ACTIVE'}">
                    <span class="badge bg-success">Active</span>
                </c:when>
                <c:when test="${listing.status == 'SOLD'}">
                    <span class="badge bg-primary">Sold</span>
                </c:when>
                <c:when test="${listing.status == 'REJECTED'}">
                    <span class="badge bg-danger">Rejected</span>
                </c:when>
                <c:otherwise>
                    <span class="badge bg-secondary">${listing.status}</span>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- NEGOTIABLE -->
        <div class="mb-3">
            <span class="label">Negotiable:</span>
            <c:choose>
                <c:when test="${listing.negotiable}">
                    <span class="badge bg-info">Yes</span>
                </c:when>
                <c:otherwise>
                    <span class="badge bg-dark">No</span>
                </c:otherwise>
            </c:choose>
        </div>

        <!--  FULL DESCRIPTION -->
        <div class="mt-4">
            <h5>Description</h5>
            <p class="border p-3 rounded bg-light">
                ${listing.description}
            </p>
        </div>

        <!--  BACK BUTTON -->
        <div class="mt-4">
            <a href="listListing" class="btn btn-secondary">
                Back to List
            </a>
        </div>

    </div>
</div>




                        
                                      
                                
            <!-- /.container-fluid -->

            
            <!-- End of Main Content -->

            <!-- Footer -->
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    
    
    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
     
    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <!-- Bootstrap core JavaScript-->
    

</body>

</html>
    