<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #FFFFFF; background-color: #FF6600;" 
        class="txt-center">
    Admin Login</p>
<p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal">
    User Name&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal">
    &nbsp;&nbsp;&nbsp;&nbsp;
    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
        Text="Log In" Width="64px" />
</p>
</asp:Content>

