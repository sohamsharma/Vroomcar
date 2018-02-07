<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
        .style2
        {
            font-size: xx-large;
            color: #000066;
            background-color: #FFFFFF;
        }
        .style3
        {
            color: #000099;
            text-decoration: underline;
        }
    </style>
</head>
<body style="height: 1479px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="User Database" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Car Database" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server"
            PostBackUrl="~/Default.aspx">Logout</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <span class="style1"><strong><em><span class="style2">User Database</span></em></strong></span><br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="Sno" DataSourceID="SqlDataSource1" 
                GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                PageSize="4" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Sno" HeaderText="Sno" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Sno" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" 
                        SortExpression="UserName" />
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                        SortExpression="PhoneNo" />
                    <asp:BoundField DataField="Password" HeaderText="Password" 
                        SortExpression="Password" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM data WHERE (Sno = @Sno)" 
                SelectCommand="SELECT Sno, Name, UserName, Sex, Age, EmailID, Address, PhoneNo, Password FROM data" 
                UpdateCommand="UPDATE data SET Name = @Name, UserName = @UserName, Sex = @Sex, Age = @Age, EmailID = @EmailID, Address = @Address where (Sno= @Sno)">
                <DeleteParameters>
                    <asp:Parameter Name="Sno" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="UserName" />
                    <asp:Parameter Name="Sex" />
                    <asp:Parameter Name="Age" />
                    <asp:Parameter Name="EmailID" />
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="Sno" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <h1 class="style3">
                <strong><em style="color: #000066">Log Entries</em></strong></h1>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="EmailID" DataSourceID="SqlDataSource2" AllowPaging="True" 
                PageSize="4" BackColor="White" BorderColor="#999999" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                style="text-align: center" HorizontalAlign="Center" Width="400px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="Car" HeaderText="Car" SortExpression="Car" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Fare" HeaderText="Fare" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                    <asp:BoundField DataField="Days" HeaderText="Days" />
                    <asp:BoundField DataField="Coupon" HeaderText="Coupon" />
                    <asp:HyperLinkField DataNavigateUrlFields="EmailID" 
                        DataNavigateUrlFormatString="admin.aspx?EmailID={0}" DataTextField="EmailID" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Log]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical" 
                HorizontalAlign="Center" style="text-align: center" Width="400px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="Car" HeaderText="Car" SortExpression="Car" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Fare" HeaderText="Fare" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                    <asp:BoundField DataField="Coupon" HeaderText="Coupon" />
                    <asp:BoundField DataField="Days" HeaderText="Days" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Log] WHERE ([EmailID] = @EmailID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="EmailID" QueryStringField="EmailID" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    
    </div>

    <asp:Panel ID="Panel2" runat="server" Visible="False" Height="1148px">
           <br />
           <br />
           <asp:Button ID="Button3" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Hybrid" Width="100px" Height="35px" onclick="Button3_Click" 
       />
&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Micro" Width="100px" Height="35px" onclick="Button4_Click" 
       />
&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Sedan" Width="100px" Height="35px" onclick="Button5_Click" 
       />
&nbsp;
    <asp:Button ID="Button6" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="SUV" Width="100px" Height="35px" onclick="Button6_Click" 
       />
&nbsp;
    <asp:Button ID="Button7" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Luxury" Width="100px" Height="35px" onclick="Button7_Click" 
      />
    <br />
    <br />
    <br />
           Manufacturer:
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <br />
           Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           <br />
           Speed:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
           <br />
           Rate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
           <br />
           Picture:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:FileUpload ID="FileUpload1" runat="server" />
   </asp:Panel>

    </form>
</body>
</html>
