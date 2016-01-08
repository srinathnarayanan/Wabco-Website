<%@ Page Title="admin-home" Language="C#" MasterPageFile="~/Masterpage/admin.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="Management_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 328px;
        }
        .style3
        {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>
    Hello Admin !</h1>

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Image ID="Image3" runat="server" Height="278px" 
                    ImageUrl="~/App_Themes/blue/images/user_admin.png" Width="289px" />
            </td>
            <td>
                <h2 class="style3">
    You may access the departments and employee databases from here, along with the 
    overview of the feedback form.</h2></td>
        </tr>
    </table>
    <br />
</asp:Content>

