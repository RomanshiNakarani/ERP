<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewstudent.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
<form role="form" runat="server">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Student Data</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="admin.aspx">Dashboard</a></li>
              <li class="breadcrumb-item active">Student Data</li>
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
              
              <!-- /.card-header -->
              <!-- form start -->
            
                <div class="card-body">
                 
                  <asp:GridView ID="Studentgridview" class="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="Studentgridview_SelectedIndexChanged">
                  <Columns>
                    <asp:BoundField DataField="Enroll_no" HeaderText="Enroll No." />
                    <asp:BoundField DataField="name" HeaderText="Student Name" />
                    <asp:BoundField DataField="email_id" HeaderText="Email ID" />
                    <asp:BoundField DataField="institute" HeaderText="Institute Name" />
                    <asp:BoundField DataField="admission_year" HeaderText="Admission Year" />
                    <asp:BoundField DataField="course" HeaderText="Course" />
                    <asp:BoundField DataField="division" HeaderText="Division" />
                    <asp:BoundField DataField="semester" HeaderText="Semester" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="password" HeaderText="Password" />

                     
                  </Columns>
                </asp:GridView>   
                        
                </div>
                <!-- /.card-body -->

              
            
                

                </div>

 
                 
                                             



                  </div>
                    
                   
                  
                </div>
                <!-- /.card-body -->
                
             
            </div>
          
    </section>

      </form> 
</div>
</asp:Content>

