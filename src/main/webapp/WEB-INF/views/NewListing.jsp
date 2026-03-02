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
                    <h1 class="h3 mb-0 text-gray-800">New Listings</h1>
                    </div>
                    
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3"></div>
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<p class="m-0 font-weight-bold text-primary">Add New Listings</p>
										<a href="listListing" class="text-info">View all</a>
									</div>

                     <!-- Content Row -->
                     
            <form action="saveListing" method="post">

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

                <!-- STATUS (ONLY ONE FIELD NOW) -->
                <div class="mb-3">
                <label class="form-label">Status</label>
                <select name="status" class="form-control" required>
                <option value="">Select Status</option>
                <option value="ACTIVE">Active</option>
                <option value="SOLD">Sold</option>
                <option value="REJECTED">Rejected</option>
                </select>
                </div>
                
                <div class="mb-3">
                    <label class="form-label">Category</label>
                    <select name="categoryId" class="form-control" required>
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
                    <select name="subcategoryId" class="form-control" required>
                        <option value="">Select Sub Category</option>
                        <c:forEach items="${subCategoryList}" var="sc">
                            <option value="${sc.subcategoryId}">
                                ${sc.subCategoryName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Product Condition</label>
                    <select name="productCondition" class="form-control" required>
                        <option value="">Select Condition</option>
                        <option value="NEW">NEW</option>
                        <option value="LIKE_NEW">LIKE_NEW</option>
                        <option value="GOOD">GOOD</option>
                        <option value="FAIR">FAIR</option>
                        <option value="OLD">OLD</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Location</label>
                    <input type="text" name="location"
                           class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Negotiable</label>
                    <select name="negotiable" class="form-control">
                        <option value="true">Yes</option>
                        <option value="false">No</option>
                    </select>
                </div>

                
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
    