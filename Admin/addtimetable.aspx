<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="addtimetable.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-wrapper">
     <form role="form" runat="server">
    <section class="content-header">
        
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add TimeTable</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="admin.aspx">Dashboard</a></li>
              <li class="breadcrumb-item active">Add TimeTable</li>
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
                  <div class="form-group">
                    <label for="exampleInputEmail1">TimeTable Name</label>
                     <asp:TextBox ID="tt_name" runat="server" class="form-control"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">File input</label>
                    <div class="input-group">
                      <div class="custom-file">
                           <asp:FileUpload ID="Tt_imag" Class="form-control" runat="server" />
                      </div>
                      
                    </div>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <asp:button id="Timetable" class="btn btn-primary" type="submit" text="Upload" runat="server" OnClick="Timetable_Click"></asp:button>

                </div>

                <div class="card-body">
                 
                  <asp:GridView ID="timetablegrid" class="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                  <Columns>
                    <asp:BoundField DataField="timetable_name" HeaderText="Time-Table Name" />
                    <asp:BoundField DataField="img" HeaderText="Time Table" />
                   
                    
                  </Columns>
                </asp:GridView>   
                        
                </div>

            
                

                </div>

 
              
                        
                                             



                  </div>
                    
                   
                  
                </div>
                <!-- /.card-body -->
                
             
            </div>
          
    </section>
      </form> 

</div>
</asp:Content>

