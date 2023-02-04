<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="Student_studentlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Student | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" />
  <!-- iCheck -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
  <!-- JQVMap -->
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css"/>
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css"/>
  <!-- summernote -->
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.css"/>
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"/>
    <style>
        .st {
          margin-right:400px;
          margin-left:400px;
        }

        /* alter the style when the screen's smaller */
        @media screen and (max-width: 1200px) {
            .st {
               margin-right:100px;
               margin-left:100px;
            }
        }
        .footer{
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
          
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="wrapper st" style="">
       <!-- <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6" style="align-content:center;">
            <h1>LOGIN HERE!</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-danger">
              <div class="card-header">
                <!--<h3 class="card-title">LOGIN</h3>-->
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" id="loginform" runat="server">
                <div class="card-body">
               
                  <div class="form-group">
                    <label for="exampleInputEmail1">User Name</label>
                      <asp:TextBox ID="email_id" runat="server"  type="email" class="form-control" placeholder="Enter Email"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                     <asp:TextBox ID="pass" runat="server" type="password" class="form-control" placeholder="Enter Password"></asp:TextBox>
                  </div>
                 
                </div>
                <!-- /.card-body -->
                <div class="card-footer form-group">
      
                    <asp:Button ID="login_btn" runat="server" Text="LOGIN" class="btn btn-danger" OnClick="studentlogin_btn_Click"/>
                    <asp:Label ID="Label2" runat="server" Text="Don't have an Account? " style="padding-left:35%;"></asp:Label><a href="studentregister.aspx">Register here!</a>

                </div>
              </form>
            </div>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

    <footer class="footer card-footer">
    
    <strong>Copyright &copy; 2023-2024 <a href="home.aspx">ERP MANAGEMNT</a>.</strong> All rights
    reserved.
    </footer>

 



<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jquery-validation -->
<script src="../plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="../plugins/jquery-validation/additional-methods.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>


</body>
</html>
