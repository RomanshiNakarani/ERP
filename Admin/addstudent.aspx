<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="content-wrapper">
            <form runat="server">
        <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add Student</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="admin.aspx">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Student</li>
              <li><asp:Button runat="server" Text="logout" OnClick="Logout" class="btn btn-danger btnl"/></li>  
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-primary">
           
                <div class="card-body">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Student Name</label>
                        <asp:TextBox ID="s_name" runat="server" type="text" class="form-control" placeholder="Enter Student Name"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email Id</label>
                        <asp:TextBox ID="s_email_id" runat="server" type="email" class="form-control" placeholder="Enter Email Address"></asp:TextBox>
                      </div>
                      <div class="form-group">
                            <label for="exampleInputEmail1">Institute Name</label>
                            <asp:TextBox ID="institute" runat="server" type="text" class="form-control" placeholder="Enter Institute Name"></asp:TextBox>
                            
                          </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Admission Year</label>
                        <asp:TextBox ID="admission_year" runat="server" type="text" class="form-control" placeholder="Enter Admission Year"></asp:TextBox>
                      </div>

                   
                      <div class="form-group">
                        <label for="exampleInputEmail1">Course</label>
                            <asp:DropDownList ID="course" runat="server" class="form-control">
                                <asp:ListItem>Computer Engineering</asp:ListItem>
                                <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                <asp:ListItem>Civil Engineering</asp:ListItem>
                                <asp:ListItem>Electrical Engineering</asp:ListItem>
                                <asp:ListItem>Information Technology</asp:ListItem>
                                <asp:ListItem>cyber Security</asp:ListItem>
                          </asp:DropDownList>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Division</label>
                           
                          <asp:DropDownList ID="div" runat="server"  class="form-control">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                                
                          </asp:DropDownList>
                       
                        </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Semester</label>
                           
                          <asp:DropDownList ID="sem" runat="server"  class="form-control">
                                <asp:ListItem>SEM-1</asp:ListItem>
                                <asp:ListItem>SEM-2</asp:ListItem>
                                <asp:ListItem>SEM-3</asp:ListItem>
                                <asp:ListItem>SEM-4</asp:ListItem>
                                <asp:ListItem>SEM-5</asp:ListItem>
                                <asp:ListItem>SEM-6</asp:ListItem>
                                <asp:ListItem>SEM-7</asp:ListItem>
                                <asp:ListItem>SEM-8</asp:ListItem>
                                
                          </asp:DropDownList>
                            </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Gender</label>
                        <asp:DropDownList ID="gender" runat="server"  class="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                                
                                
                          </asp:DropDownList>                

                        </div>
                      <div class="form-group">
                            <label for="exampleInputEmail1">Password</label>
                             <asp:TextBox ID="pass" runat="server" type="password" class="form-control" placeholder="Enter Password"></asp:TextBox>

                        </div>
                      <div class="card-footer">
                          <asp:Button ID="Addstudent" runat="server" Text="Add Student" class="btn btn-primary" OnClick="Addstudent_Click"/>

                        </div>
                    </div>
               
             </div>
          </div>
         </div>
      </div>
          
    </section>
       </form>
</div>

</asp:Content>

