<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Booklogin.aspx.cs" Inherits="Booklogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Hybrid" Width="100px" Height="35px" 
        onclick="Button1_Click" 
        style="color: #FFFFFF; background-color: #FF6600" />
&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Micro" Width="100px" Height="35px" 
        onclick="Button2_Click" 
        style="color: #FFFFFF; background-color: #FF6600" />
&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Sedan" Width="100px" Height="35px" 
        onclick="Button3_Click" 
        style="color: #FFFFFF; background-color: #FF6600" />
&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="SUV" Width="100px" Height="35px" 
        onclick="Button4_Click" 
        style="color: #FFFFFF; background-color: #FF6600" />
&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#FF6600" 
        BorderStyle="Dashed" Text="Luxury" Width="100px" Height="35px" 
        onclick="Button5_Click" 
        style="color: #FFFFFF; background-color: #FF6600" />
    <br />
    <br />
    <br />
    <span style="color: #000000"><strong style="font-size: x-large">*</strong></span><span 
        style="color: #FF3300"> Security deposit of </span><strong>Rs.5000/-</strong>
    <span style="color: #FF3300">(Refundable) applicable on all the cars, except 
    Luxury</span> <strong>(Rs.50,000/-) </strong><span style="color: #FF3300">(To be 
    paid on the time of delivery, By cash or card.)</span><strong><br />
    </strong>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False" HorizontalAlign="Justify">
        <div class="txt-center" style="text-align: justify">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="text-decoration: underline"><strong style="font-size: xx-large">
            Hybrid</strong></span><br />
            <br />
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sno" DataSourceID="SqlDataSource1" HorizontalAlign="Center" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="600px">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:HyperLinkField DataNavigateUrlFields="Name" 
                    DataNavigateUrlFormatString="Hybrid.aspx?Name={0}" DataTextField="Name" 
                    HeaderText="Name" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Hybrid]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="txt-center" style="text-decoration: underline">
            <strong style="font-size: xx-large">Micro<br />
            <br />
            <br />
            </strong>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sno" DataSourceID="SqlDataSource2"  HorizontalAlign="Center" 
            Width="600px" onselectedindexchanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:HyperLinkField DataNavigateUrlFields="Name" 
                    DataNavigateUrlFormatString="Micro.aspx?Name={0}" DataTextField="Name" 
                    HeaderText="Name" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Micro]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <div class="txt-center" style="text-decoration: underline">
            <strong style="font-size: xx-large">Sedan<br />
            <br />
            </strong>
        </div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sno" DataSourceID="SqlDataSource3" 
            onselectedindexchanged="GridView3_SelectedIndexChanged" HorizontalAlign="Center" Width="600px">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:HyperLinkField DataNavigateUrlFields="Name" 
                    DataNavigateUrlFormatString="Sedan.aspx?Name={0}" DataTextField="Name" 
                    HeaderText="Name" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Sedan]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <div class="txt-center" style="text-decoration: underline">
            <strong style="font-size: xx-large">SUV<br />
            <br />
            </strong>
        </div>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sno" DataSourceID="SqlDataSource4" HorizontalAlign="Center" Width="600px">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:HyperLinkField DataNavigateUrlFields="Name" 
                    DataNavigateUrlFormatString="SUV.aspx?Name={0}" DataTextField="Name" 
                    HeaderText="Name" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [SUV]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Visible="False">
        <div class="txt-center">
            <span style="text-decoration: underline"><strong style="font-size: xx-large">
            Luxury<br />
            <br />
            </strong></span>
        </div>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sno" DataSourceID="SqlDataSource5" HorizontalAlign="Center" 
            Width="600px" onselectedindexchanged="GridView5_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:HyperLinkField DataNavigateUrlFields="Name" 
                    DataNavigateUrlFormatString="Luxury.aspx?Name={0}" DataTextField="Name" 
                    HeaderText="Name" />
                <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Luxury]"></asp:SqlDataSource>
    </asp:Panel>
    <br />
</asp:Content>

