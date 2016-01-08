<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/frontend.master" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 403px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div style="float:left; width:990px; padding:10px">
    <h1> Thank you for taking the time to provide us with your valuable feedback!
        </h1>

</div>
<br/>
<table class="style1">
<tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/App_Themes/blue/images/thanks.jpg" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    

</asp:Content>

