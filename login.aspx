<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/frontend.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Management_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <h1>Sign In As Admin</h1>
    <asp:Login ID="Login1" runat="server" Height="189px" 
    LoginButtonText="SIGN IN" TitleText="" Width="360px" 
    DestinationPageUrl="~/Management/Default1.aspx" BackColor="#E3EAEB" 
    BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
    Font-Names="Verdana" Font-Size="Medium" ForeColor="#333333" 
    TextLayout="TextOnTop" LoginButtonStyle-BackColor="#3A599A" LoginButtonStyle-ForeColor="White">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="Medium" />
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
           
    </asp:Login> 
<br />
</asp:Content>

