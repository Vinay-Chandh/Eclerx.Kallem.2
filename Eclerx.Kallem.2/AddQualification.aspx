<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQualification.aspx.cs" Inherits="Eclerx.Kallem._2.AddQualification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <td><label>Qualification Name</label></td>
                    <td>
                        <asp:TextBox ID="TxtQualificationName" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td><label>Institute</label></td>
                    <td>
                        <asp:TextBox ID="TxtInstitute" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label>Year of Passing</label></td>
                    <td>
                        <asp:TextBox ID="TxtYearOfPassing" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td><label>University</label></td>
                    <td>
                        <asp:TextBox ID="TxtUniversity" runat="server" ></asp:TextBox></td>
                </tr>
            </table>
            <tr>
                <td>
                    <asp:Button ID="BtnCreate" runat="server" Text="Create" OnClick="Button1_Click" />
                </td>
            </tr>
        </div>
    </form>
</body>
</html>
