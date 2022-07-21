<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewQualification.aspx.cs" Inherits="Eclerx.Kallem._2.ViewQualification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <asp:Button ID="BtnAddQual" runat="server" Text="Add Qualification" OnClick="Button1_Click" />


            <table class="table table-striped table-bordered"  id="holdingTable">
        <tr>
            
            <th>Qualification ID</th>
            <th>Qualification Name</th>
             <th>Instittute</th>
            <th>Year of Passing</th>
             <th> university</th>
              
        </tr>
         <asp:Repeater runat="server" ID="Repeater1">
               <ItemTemplate>
                   <tr data-id="<%# Eval("QualificationId") %>">
                    <td>
                       <span runat="server" id="Span1"><%# Eval("QualificationId") %></span>
                   </td>
                         <td>
                       <span runat="server" id="Span2"><%# Eval("QualificationName") %></span>
                   </td>
                      <td>
                       <span runat="server" id ="Span3"><%# Eval("Institute") %></span>
                   </td>
                      <td>
                       <span runat="server" id ="Span4"><%# Eval("YearOfPassing") %></span>
                   </td>
                    <td>
                       <span runat="server" id ="Span5"><%# Eval("University") %></span>
                   </td>
                       <td>
                        <a href ="" class="RemoveAccessButton">Delete</span></a>
                    </td>
                   </tr>
               </ItemTemplate>
         </asp:Repeater>
    </table>


            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [Qualification]"></asp:SqlDataSource>--%>

        </div>
    </form>
</body>
</html>
