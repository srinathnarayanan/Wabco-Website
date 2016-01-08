
<%@ Page Title="admin-modify info" Language="C#" MasterPageFile="~/Masterpage/admin.master" AutoEventWireup="true" CodeFile="employees.aspx.cs" Inherits="Management_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div id="pic" style="float:left; width:305px; padding:10px; height: 262px;">


    <asp:Image ID="Image3" runat="server" Height="246px" 
        ImageUrl="~/App_Themes/blue/images/emp1.jpg" Width="260px" />


</div>
<div id="grid" style="float:left;width:600; padding:10px">

    <h1>Employees Database</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [employee] WHERE [enum] = @enum" 
        InsertCommand="INSERT INTO [employee] ([enum], [name]) VALUES (@enum, @name)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [enum], [name] FROM [employee]" 
        UpdateCommand="UPDATE [employee] SET [name] = @name WHERE [enum] = @enum">
        <DeleteParameters>
            <asp:Parameter Name="enum" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="enum" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="enum" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="enum" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="2px" CellPadding="5" 
        GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ButtonType="Button" />
            <asp:BoundField DataField="enum" HeaderText="enum" ReadOnly="True" 
                SortExpression="enum" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#3A599A" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="enum" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="enum" HeaderText="enum" ReadOnly="True" 
                SortExpression="enum" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</div>
            </asp:Content>

