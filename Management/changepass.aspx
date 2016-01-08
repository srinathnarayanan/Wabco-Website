<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/admin.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="Management_changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div id="pic" style="float:left; width:149px; padding:10px; height: 121px;">


    <asp:Image ID="Image3" runat="server" Height="119px" 
        ImageUrl="~/App_Themes/blue/images/change.gif" Width="134px" />


</div>
<div id="grid" style="float:left;width:600; padding:10px">
<h1>Change Password</h1>

    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="Medium" Height="206px" Width="486px" 
    oncontinuebuttonclick="Redirect" >
        <CancelButtonStyle BackColor="#3a599a" BorderColor="#507CD1" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" ForeColor="White" />
        <ChangePasswordButtonStyle BackColor="#3a599a" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
            ForeColor="White" />
        <ContinueButtonStyle BackColor="#3a599a" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
            ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1" />
        <TextBoxStyle Font-Size="Medium" />
        <TitleTextStyle BackColor="#3a599a" Font-Bold="True" Font-Size="Large" 
            ForeColor="White" BorderColor="#3a599a" BorderWidth="2px" />
    </asp:ChangePassword>


    <br/>
    </div>
</asp:Content>

