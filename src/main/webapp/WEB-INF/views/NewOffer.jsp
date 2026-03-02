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
                    <h1 class="h3 mb-0 text-gray-800">New Offers</h1>
                    </div>
                    
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3"></div>
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<p class="m-0 font-weight-bold text-primary">Add New Offers</p>
										<a href="listOffer" class="text-info">View all</a>
									</div>
									
					 <form action="saveOffer" method="post">

    <!-- Hidden Listing ID -->
    <input type="hidden" name="listing_id" value="${listing.listingId}">

    <!-- Hidden Buyer ID (Logged-in user) -->
    <input type="hidden" name="buyer_id" value="${sessionScope.user.userId}">

    <div class="form-group">
        <label>Offered Price</label>
        <input type="number" 
               name="offered_price" 
               step="0.01" 
               class="form-control" 
               required>
    </div>

    <button type="submit" class="btn btn-primary mt-3">
        Submit Offer
    </button>

</form>
					 


	</div>

                     <!-- Content Row -->
                    

                        
                                      
                                
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
    