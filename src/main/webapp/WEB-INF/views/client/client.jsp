<%@ include file="/WEB-INF/views/includes/include.jsp" %>
<!DOCTYPE html>
<html lang="fr">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Clients</title>

  <!-- Custom fonts for this template-->
  <link href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" rel="stylesheet">
 
  <link href="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
   <%@ include file="/WEB-INF/views/menu_left/menu_left.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
     <%@ include file="/WEB-INF/views/menu_top/menu_top.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">VOS CLIENTS</h1>

        </div>
        <!-- /.container-fluid -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"><a class="btn btn-success btn-large" href="<c:url value="/client/nouveau"/>" >Ajouter Client</a></h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
             <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                 
                      <th>CIN</th>
                      <th>Nom</th>
                      <th>Prenom</th>
                      <th>Adresse</th>
                      <th>Email</th>
                      <th>Telephone</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                  
                    <tr>
                     <th>CIN</th>
                      <th>Nom</th>
                      <th>Prenom</th>
                      <th>Adresse</th>
                      <th>Email</th>
                      <th>Telephone</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${clients}" var="client">
               
                    <tr>
                      <td><center>${client.getCin()}</center></td>
                       <td><center>${client.getNom()}</center></td>
                       <td><center>${client.getPrenom()}</center></td>
                      <td><center>${client.getAdresse()}</center></td>
                      <td><center>${client.getEmail()}</center></td>
                       <td><center>${client.getTelephone()}</center></td>
                      <td><center> 
                      
                      
                      
                          <!-- Button trigger modal -->
					<button type="button" class="btn btn-danger " data-toggle="modal" data-target="#exampleModalCenter">
					  <i class="fas fa-trash"></i></a>
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">Confirmation</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					     vous �tes sur!
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        <c:url value="/client/supprimer/${client.getId()}" var="suppReser"/>
						                  <a href="${suppReser}" class="btn btn-danger btn-icon-split">
						                  
						                    <span class="text">Supprimer</span>
						                  </a>
					      </div>
					    </div>
					  </div>
					</div>
                      <c:url value="/client/modifier/${client.getId()}" var="urlmodifier"/>
                        <a href="${urlmodifier}" class="btn  btn-warning "> <span class="fas fa-edit"></span></a> 
                         <c:url value="/client/reserverVoiture/${client.getId()}" var="reserver"/>
                        <a href="${reserver}" class="btn btn-success">Reserver</a>
                      </center>
                      
                       </td>
                    </tr>
                      </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

  <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
<%--   <script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script> --%>

  <!-- Custom scripts for all pages-->
  <script src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>


 

 
  

  <!-- Custom scripts for all pages-->
 

  <!-- Page level plugins -->
  <script src="<%=request.getContextPath()%>/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
 <script src="<%=request.getContextPath()%>/resources/js/demo/datatables-demo.js"></script> 

</body>

</html>
