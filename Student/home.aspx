<%@ Page Title="" Language="C#" MasterPageFile="~/Student/studentmasterpage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row mb-2"style="margin:5%">
            <h4>Time Table</h4>

        <div class="">
            <table class="table table-hover">
  <thead>
    <tr class="table-primary">
      <th scope="col">Slot</th>
      <th scope="col">Monday</th>
      <th scope="col">Tuesday</th>
      <th scope="col">Wednesday</th>
      <th scope="col">Thrusday</th>
      <th scope="col">Friday</th>
    </tr>
  </thead>
  <tbody>
    <tr class="table-active">
      <th scope="row">Slot-1</th>
      <td>lecture1</td>
      <td>lecture1</td>
      <td>lecture1</td>
      <td>lecture1</td>
      <td>lecture1</td>
    </tr>
    <tr class="table-active">
      <th scope="row">Tea Break</th>
     
    </tr>
    
      <tr class="table-active">
      <th scope="row">slot-3</th>
     <td>lecture2</td>
      <td>lecture2</td>
      <td>lecture2</td>
      <td>lecture2</td>
      <td>lecture2</td>
    </tr>
      
  </tbody>
</table>
        </div>
        
    </div>

        
        <div class="row mb-2"style="margin:5%">
            <h4>Attendance</h4>
        <div class="">
            <table class="table table-hover">
  <thead>
    <tr class="table-primary">
      <th scope="col">Student Name</th>
       <th scope="col">Date</th>
      <th scope="col">Present</th>
       <th scope="col">Absent</th>
    </tr>
  </thead>
  <tbody>
    <tr class="table-active">
      <th scope="row">Romanshi</th>
      <td>21/12/2021</td>
      <td>yes</td>
      <td></td>
      
    </tr>
   
    
     <tr class="table-active">
      <th scope="row">kishan</th>
      <td>21/12/2021</td>
      <td></td>
      <td>yes</td>
    </tr>
      
  </tbody>
</table>
        </div>
        
    </div>

</asp:Content>

