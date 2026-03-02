<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h1 class="h3 mb-0 text-gray-800">List SubCategories</h1>
                    </div>
                    
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3"></div>
						<div class="col-md-10 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<p class="m-0 font-weight-bold text-primary">All SubCategories</p>
										<a href="newSubCategory" class="text-info">New</a>
									</div>

                     <!-- Content Row -->
                     <!-- Table -->
                     <table class="table table-bordered table-striped">
                     <thead class="bg-primary text-white">
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
    