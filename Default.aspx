<%@ Page Title="home" Language="C#" MasterPageFile="~/Masterpage/frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 176px;
        }
        .style3
        {
            padding:10px;
            height: 181px;
        }
        .style8
        {
            width: 780px;
        }
       
        .style9
        {
            width: 86px;
        }
        .style10
        {
            width: 933px;
        }
       
        .style11
        {
            font-size: xx-large;
            font-family: Arial;
        }
        .style12
        {
            padding: 10px;
            height: 181px;
            font-family: Arial;
        }
        .style13
        {
            font-family: Arial;
            font-weight: normal;
        }
        .style14
        {
            padding: 10px;
            height: 181px;
            font-family: Arial;
            font-weight: normal;
        }
        .style15
        {
            font-weight: normal;
        }
        .style16
        {
            font-family: Arial;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 class="style11">
        WABCO ISD 
        Internal Customer Feedback</h1>
    <br />
    <table class="style1">
        <tr>
            <td class="style2" align="left" rowspan="2">
           
                <asp:Image ID="Image3" runat="server" Height="278px" 
                    ImageUrl="~/App_Themes/blue/images/networking.jpg" Width="450px" />
           
            </td>
            <td class="style3" colspan="4" >
                <h2 class="style3">
                    <span class="style13">The ISD department of WABCO has long served as an effective support system for 
                    all the other departments, providing efficient hardware and software support, 
                    day in and day out.</span><span class="style15"><br class="style12" />
                    </span>
                    <span class="style14">In an effort to improve our performance, we request you to 
                    take some time to fill out this survey.</span><span class="style3"><br />
                    </span></h2>
            </td>
        </tr>
        <tr>
            <td class="style9" >
                &nbsp;</td>
            <td class="style10" >
            <h2 style=" background-color:#3a599a;padding:4px">
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="personalinfo.aspx" class="style16">Proceed To Feedback Form</a></h2>
            </td>
            <td class="style8" >
            <h2 style=" background-color:#3a599a;padding:4px">
                &nbsp;&nbsp;&nbsp;<span class="style16"><a href="login.aspx" class="style16">Sign In As Administrator</a></span><a href="login.aspx">
                 </a></h2>
            </td>
            <td >
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    </asp:Content>

