<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="Default8.aspx.cs" Inherits="Default8" EnableSessionState="True" EnableEventValidation="false" ViewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal;
        font-weight: bold; color: #FFFFFF; background-color: #FF6600;" 
        class="txt-center">
        CREATE AN ACCOUNT</p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="Name Required"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="UserName Required"></asp:RequiredFieldValidator>
    &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        Sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" 
            ValidationGroup="g" GroupName="a" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" 
            ValidationGroup="g" GroupName="a" />
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        EmailId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="EmailId is Not Valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5"
            ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        PhoneNo.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="PhoneNo. is Required"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: 'times New Roman', Times, serif; font-size: large; font-weight: normal; text-align: justify;">
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
    </p>
    <p style="text-align: justify">
        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Submit"
            Width="77px" />
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="Cancel"
            Width="77px" CausesValidation="False" />
    </p>
</asp:Content>
