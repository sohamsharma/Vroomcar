<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #FFFFFF; background-color: #FF6600;" 
        class="txt-center">
        Log In</p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal">
        User Name&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal">
        &nbsp;&nbsp;&nbsp;&nbsp;
        Password&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: x-large; font-weight: normal">
        <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
            Text="Submit" Width="66px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

