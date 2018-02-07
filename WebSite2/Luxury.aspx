<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Luxury.aspx.cs" Inherits="Luxury" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Sno" DataSourceID="SqlDataSource1" HorizontalAlign="Center" 
            Width="600px">
        <Columns>
            <asp:BoundField DataField="Sno" HeaderText="Sno" InsertVisible="False" 
                ReadOnly="True" SortExpression="Sno" />
            <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                SortExpression="Manufacturer" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
            <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Luxury] WHERE ([Name] = @Name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Luxury] WHERE ([Name] = @Name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong style="font-size: xx-large">
    <span style="font-family: 'Trebuchet MS'; color: #FF6600">
    &nbsp;</span></strong><p>
        Re-Enter Email Address:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            CausesValidation="False" />
    </p>
<p>
        <asp:Literal ID="Literal1" runat="server" Text="Select Number of Days:"></asp:Literal>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Selected="True">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Literal ID="Literal2" runat="server" 
            Text="Special Remarks or Change in Address:"></asp:Literal>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        Fare for One Day: 
        <asp:DropDownList ID="DropDownList3" runat="server" 
            DataSourceID="SqlDataSource4" DataTextField="Rate" DataValueField="Rate" 
           >
        </asp:DropDownList>
&nbsp;
        <asp:Literal ID="Literal3" runat="server" 
            Text="Total Rental Fare Excluding Security:"></asp:Literal>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Rate] FROM [Luxury] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Visible="False" HorizontalAlign="Center" 
            Width="600px" >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                    SortExpression="PhoneNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Name], [Address], [PhoneNo] FROM [data] WHERE ([EmailID] = @EmailID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="EmailID" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Enter Coupon Code:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong style="font-size: xx-large">
    <span style="font-family: 'Trebuchet MS'; color: #FF6600">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;</span><span style="font-family: Vani; color: #FF6600">Proceed to checkout:</span><span 
        style="font-family: 'Trebuchet MS'; color: #FF6600"> </span>
    </strong>
    <span style="font-family: 'Trebuchet MS'; color: #FF6600">
    <span style="font-size: xx-large">
    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None" 
        ImageUrl="~/images/lightbox-btn-next.gif" PostBackUrl="~/checkout.aspx" 
        Height="16px" Width="34px" />
    </span></span>
</asp:Content>

