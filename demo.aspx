<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/frontend.master" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

<asp:Label ID="Label1" runat="server" /> <asp:Label ID="Label2" runat="server" />

<asp:SqlDataSource 
	ID="SqlDataSource1" 
	runat="server" 
	ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
	ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
	DatasourceMode="DataSet"
	SelectCommand="SELECT [name] FROM [Employee] WHERE ([enum] = ?)" 
	OnSelecting="SqlDataSource1_Selecting">
    <SelectParameters>
        <asp:Parameter Name="enum" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource
	ID="SqlDataSource2" 
	runat="server"
	ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
	ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
	DatasourceMode="DataReader"
	SelectCommand="SELECT [name] FROM [Employee] WHERE ([enum] = ?)" 
	OnSelecting="SqlDataSource2_Selecting">
    <SelectParameters>
        <asp:Parameter Name="enum" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

