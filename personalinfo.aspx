<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/frontend.master" AutoEventWireup="true" CodeFile="personalinfo.aspx.cs" Inherits="personalinfo" %>


<%@ Register src="feedback.ascx" tagname="feedback" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
    
    
    <uc2:feedback ID="feedback1" runat="server" />
   
     
</asp:Content>

