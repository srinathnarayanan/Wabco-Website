<%@ Control Language="C#" AutoEventWireup="true" CodeFile="feedback.ascx.cs" Inherits="WebUserControl" %>
<style type="text/css">
 .Watermark
{
font-style: italic;
color: Gray;
}
    .style19
    {
        font-size: x-large;
        text-align: left;
    }
    .style21
    {
        font-size: x-large;
        text-align: center;
    }
    </style>   
    
   
   <div id="TableWrapper" >
    <asp:Panel ID="Panel1" runat="server" Visible="True" 
           style="font-size: large;">
    <h1 class="style21">
                You can start off by entering your personal details, following which you may 
                answer our questionaire, marking each answer on a scale of 1 to 5.</h1>
            <h1 class="style19">
                <br/>1:Poor<br/> 2:satisfactory<br/> 3:Good<br/> 4:very Good<br/> 5:Excellent<br/>
                <br/>
        </h1>
        <h1 class="style19">
            &nbsp;This page will time out in 10 minutes.</h1>
            <div id="side1" style="width:950px ; float: left;">
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
  
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="empno" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="120px" Width="950px" 
        AllowPaging="True" oniteminserted="DetailsView1_ItemInserted"  
         > 
        
        <Fields>
            
             <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="empno"> 
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/App_Themes/blue/images/empno.jpg" Width="83px" />
                 </div>  
                   <h2> Employee Number</h2> 
         
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" Text='<%# Bind("empno") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="enter proper employee number" ControlToValidate="TextBox1" CssClass="ErrorMessage" Display="Dynamic" MinimumValue="100000" MaximumValue="199999" Text="*"></asp:RangeValidator>
                     <asp:RequiredFieldValidator ID="reqVal2" ErrorMessage="Enter an employee number" ControlToValidate="TextBox1" runat="server" CssClass="ErrorMessage" Text="*" Display="Dynamic" />
                    </InsertItemTemplate>
               
            </asp:TemplateField>
            
     
            
            

            <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="name">
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image4" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/name icon.jpg" Width="122px" />
         </div>
                <h2>Name</h2>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" Text='<%# Bind("name") %>'></asp:TextBox>
         
          <asp:RequiredFieldValidator ID="reqVal4" ErrorMessage="Enter an employee name" ControlToValidate="TextBox2" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </InsertItemTemplate>
                
            </asp:TemplateField>
           
           
            <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="Email_Id">
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image5" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/@.jpg" Width="100px" /></div>
                <h2>Email ID</h2>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" Text='<%# Bind("Email_Id") %>'></asp:TextBox>
          <asp:RequiredFieldValidator ID="reqVal5" ErrorMessage="Enter a email id" ControlToValidate="TextBox3" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                CssClass="ErrorMessage" Display="Dynamic" EnableTheming="True" 
                ErrorMessage="enter proper email id" ControlToValidate="TextBox3" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>     
                </InsertItemTemplate>
                
            </asp:TemplateField>




            <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="landline">
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image6" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/phone_icon.png" Width="99px" /></div>
                <h2>Landline</h2>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large" Text='<%# Bind("Landline") %>'></asp:TextBox>
                
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="enter proper landline number" ControlToValidate="TextBox4" CssClass="ErrorMessage" Display="Dynamic" MinimumValue="10000000" MaximumValue="99999999" Text="*"></asp:RangeValidator>
                     
                </InsertItemTemplate>
               
            </asp:TemplateField>



            <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="cell">
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image7" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/cell icon.jpg" Width="93px" /></div>
                <h2>Cellphone</h2>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large" Text='<%# Bind("Cell") %>'></asp:TextBox>
           <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="enter proper cellphone number" ControlToValidate="TextBox5" CssClass="ErrorMessage" Display="Dynamic" MinimumValue="1000000000" MaximumValue="9999999999" Text="*"></asp:RangeValidator>
                     
                                     </InsertItemTemplate>
                
            </asp:TemplateField>


            <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="department">
                
                <InsertItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image8" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/dept icon.jpg" Width="117px" /></div>
                <h2>Department</h2>
              <asp:DropDownList ID="DropDownList1" Font-Size="X-Large" runat="server" AppendDataBoundItems="True" 
                AutoPostBack="True" DataSourceID="SqlDataSource2" SelectedValue='<%# Bind("department") %>' DataTextField="department" 
                DataValueField="dcode" >
               
                <asp:ListItem Text="">choose a department</asp:ListItem>
              
            </asp:DropDownList>      
           
          <asp:RequiredFieldValidator ID="reqVal3" ErrorMessage="choose a department name" ControlToValidate="DropDownList1" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </InsertItemTemplate>
               
            </asp:TemplateField>
            









            
         <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image9" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/clocl icon.jpg" Width="106px" />
</div>
               <h2> In case of a software/hardware failure, how effective is the response time of ISD?<h2>
                <asp:DropDownList ID="q1" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q1") %>' >
                <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq1" ErrorMessage="answer q1" ControlToValidate="q1" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>

             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                 <div style="float:left;width:150px;">
                 <asp:Image ID="Image16" runat="server" Height="90px" 
         ImageUrl="~/App_Themes/blue/images/workingtime icon.jpg" Width="97px" 
         BorderColor="White" BorderWidth="5px" /></div>
                <h2>How satisfactory is the uptime/working time of the software provided for your department?</h2>
              <asp:DropDownList ID="q2" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q2") %>' >
             <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq2" ErrorMessage="answer q2" ControlToValidate="q2" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image10" runat="server" Height="90px" 
         ImageUrl="~/App_Themes/blue/images/workingtime icon.jpg" Width="95px" 
         BorderColor="White" BorderWidth="5px" /></div>
                <h2>How satisfactory is the uptime/working time of the hardware provided for your department?</h2>
              <asp:DropDownList ID="q3" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q3") %>' >
 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq3" ErrorMessage="answer q3" ControlToValidate="q3" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
     <asp:Image ID="Image11" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/lan icon.png" Width="103px" /></div>
               <h2> How effective is the LAN connectivity provided across WABCO?<h2>
              <asp:DropDownList ID="q4" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q4") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq4" ErrorMessage="answer q4" ControlToValidate="q4" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image12" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/call icon.jpg" Width="104px" /></div>
                <h2>How satisfactory is the performance of the telephone network provided by ISD?</h2>
              <asp:DropDownList ID="q5" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q5") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq5" ErrorMessage="answer q5" ControlToValidate="q5" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
     <asp:Image ID="Image13" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/wifi icon.jpg" Width="109px" /></div>
                <h2>How effective is the Wi-Fi Connectivity provided across WABCO?</h2>
              <asp:DropDownList ID="q6" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q6") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq6" ErrorMessage="answer q6" ControlToValidate="q6" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                <asp:Image ID="Image14" runat="server" Height="90px" 
         ImageUrl="~/App_Themes/blue/images/signal booster icon.jpg" Width="89px" 
         BorderColor="White" BorderWidth="5px" style="margin-right: 2px" /></div>
                <h2>How effective are the mobile phone signal boosters, in your department?</h2>
              <asp:DropDownList ID="q7" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q7") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq7" ErrorMessage="answer q7" ControlToValidate="q7" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="" 
                SortExpression="department">
                <EditItemTemplate>
                 <div style="float:left;width:150px;">
     <asp:Image ID="Image15" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/buying.jpg" Width="113px" /></div>
                <h2>How effective is the ISD in procuring the required hardware/software in time?</h2>
              <asp:DropDownList ID="q8" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q8") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq8" ErrorMessage="answer q8" ControlToValidate="q8" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image17" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/update.gif" Width="90px" /></div>
                <h2>How effective are the software/hardware updates provided by the ISD,for your department?</h2>
              <asp:DropDownList ID="q9" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q9") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq9" ErrorMessage="answer q9" ControlToValidate="q9" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image18" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/conf.png" Width="96px" /></div>
                <h2>How satisfactory are the audio/video conferencing facilities provided by ISD?</h2>
              <asp:DropDownList ID="q10" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q10") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq10" ErrorMessage="answer q10" ControlToValidate="q10" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


            
             <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image19" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/cust.jpg" Width="96px" /></div>
                <h2>In your opinion, how much importance is given by ISD to your department?</h2>
              <asp:DropDownList ID="q11" runat="server"  Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q11") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq11" ErrorMessage="answer q11" ControlToValidate="q11" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>



            
             <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image20" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/maintenance.png" Width="96px" /></div>
                <h2>How effective is the software and hardware maintenance provided by ISD?</h2>
              <asp:DropDownList ID="q12" runat="server" Font-Size="X-Large" AppendDataBoundItems="True" 
                AutoPostBack="True" SelectedValue='<%# Bind("q12") %>' >
                 <asp:ListItem Text="">select an option</asp:ListItem>
                <asp:ListItem Text="">1</asp:ListItem>
                <asp:ListItem Text="">2</asp:ListItem>
                <asp:ListItem Text="">3</asp:ListItem>
                <asp:ListItem Text="">4</asp:ListItem>
                <asp:ListItem Text="">5</asp:ListItem>
            </asp:DropDownList>      
         
          <asp:RequiredFieldValidator ID="reqValq12" ErrorMessage="answer q12" ControlToValidate="q12" runat="server" CssClass="ErrorMessage" Display="Dynamic" Text="*" />
                </EditItemTemplate>
               
            </asp:TemplateField>


             <asp:TemplateField ConvertEmptyStringToNull="False"  
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
                 <asp:Image ID="Image21" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/besttechno.jpg" Width="122px" /></div>
               <h2>In your opinion, which is the best technology introduced by ISD?</h2>
              <asp:TextBox ID="TextBox1b" runat="server" Font-Size="X-Large" Text='<%# Bind("besttechno") %>' TextMode="MultiLine"></asp:TextBox>
               </EditItemTemplate>
                 
            </asp:TemplateField>



             <asp:TemplateField ConvertEmptyStringToNull="False" 
                SortExpression="department">
                <EditItemTemplate>
                <div style="float:left;width:150px;">
     <asp:Image ID="Image22" runat="server" Height="100px" 
         ImageUrl="~/App_Themes/blue/images/suggest.jpg" Width="148px" /></div>
                <h2>In your opinion, in which areas should the ISD improve its services? Any and all suggestions and remarks are welcome.</h2>
              <asp:TextBox ID="TextBox2s" runat="server" Font-Size="X-Large" Text='<%# Bind("suggestions") %>' TextMode="MultiLine"></asp:TextBox>
               </EditItemTemplate>
               
            </asp:TemplateField>

            
       


             <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="SUBMIT" />            
        </Fields>
    </asp:DetailsView>
     
     </ContentTemplate>
    
</asp:UpdatePanel>
</div>
 
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [feedback] WHERE [empno] = @empno" 
        InsertCommand="INSERT INTO [feedback] ([department], [empno], [name], [Email Id], [landline], [cell], [q1], [q2], [q3], [q4], [q5], [q6], [q7], [q8], [q9], [q10], [q11], [q12], [suggestions], [besttechno]) VALUES (@department, @empno, @name, @Email_Id, @landline, @cell, @q1, @q2, @q3, @q4, @q5, @q6, @q7, @q8, @q9, @q10, @q11, @q12, @suggestions, @besttechno)" 
        SelectCommand="SELECT [department], [empno], [name], [Email Id] AS Email_Id, [landline], [cell] FROM [feedback]" 
        UpdateCommand="UPDATE [feedback] SET [department] = @department, [name] = @name, [Email Id] = @Email_Id, [landline] = @landline, [cell] = @cell WHERE [empno] = @empno">
        <DeleteParameters>
            <asp:Parameter Name="empno" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="department" Type="String" />
            <asp:Parameter Name="empno" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Email_Id" Type="String" />
            <asp:Parameter Name="landline" Type="Decimal" />
            <asp:Parameter Name="cell" Type="Decimal" />
            <asp:Parameter Name="q1" Type="Decimal" />
            <asp:Parameter Name="q2" Type="Decimal" />
            <asp:Parameter Name="q3" Type="Decimal" />
            <asp:Parameter Name="q4" Type="Decimal" />
            <asp:Parameter Name="q5" Type="Decimal" />
            <asp:Parameter Name="q6" Type="Decimal" />
            <asp:Parameter Name="q7" Type="Decimal" />
            <asp:Parameter Name="q8" Type="Decimal" />
            <asp:Parameter Name="q9" Type="Decimal" />
            <asp:Parameter Name="q10" Type="Decimal" />
            <asp:Parameter Name="q11" Type="Decimal" />
            <asp:Parameter Name="q12" Type="Decimal" />
            <asp:Parameter Name="suggestions" Type="String" />
            <asp:Parameter Name="besttechno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="department" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Email_Id" Type="String" />
            <asp:Parameter Name="landline" Type="Decimal" />
            <asp:Parameter Name="cell" Type="Decimal" />
            <asp:Parameter Name="empno" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [department], [dcode] FROM [dept]">
    </asp:SqlDataSource>
    

       </asp:Panel> 
</div>





                 
   <div id="rest" style="clear: both;">
   
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                CssClass="ErrorMessage" HeaderText="please correct the following errors" />

      <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" 
    Interval="300000">
        </asp:Timer>
   
        <asp:Panel ID="Panel2" runat="server" Visible="false">
             
       <h1>
        <asp:Label ID="time" runat="server" style="font-weight: 700" 
            Text="This page has timed out. click on the arrow to continue." Visible="true"></asp:Label>
            </h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;
            <a href="personalinfo.aspx">
            <asp:Image ID="Image2" runat="server" Height="21px" 
                ImageUrl="~/App_Themes/blue/images/Blue_Right_Arrow.png"
                Width="62px" />
            </a>
            </asp:Panel>
   
   
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
<div class="PleaseWait">
Please Wait...
</div>
</ProgressTemplate>
</asp:UpdateProgress>


</div>


<script type="text/javascript">

    $(function () {



        $(':input[type=text], textarea').each
        (
            function () {
                var newText = 'Please enter value ' +
            $(this).parent().prev().text().toLowerCase().trim();
                $(this).attr('value', newText);
            }).one('focus', function () {
                this.value = '', this.className = ''
            }).addClass('Watermark').css('width', '300px');

        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);

            }

        });

    });

    function pageLoad() {

        $('.Attention').animate({ width: '1000px' }, 3000).
animate({ width: '500px' }, 3000).fadeOut('slow');
    }
</script>
