<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style ="width:400px; margin:auto;">

            <h2>Event Registration Form</h2>

            <asp:Label ID="lbname" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" /><br /><br />
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" /><br />
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format." ForeColor="Red" Display="Dynamic" 
                ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" /><br /><br />
            <asp:Label ID="lblContact" runat="server" Text="Contact Number:"></asp:Label><br />
            <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><br /> 
            <asp:RegularExpressionValidator ID="revContact" runat="server"
                ControlToValidate="txtContact" 
                ErrorMessage="Invalid contact number." ForeColor="Red" Display="Dynamic"
                ValidationExpression="^\d{10}$" /><br /><br />
            <asp:Label ID="lblEvent" runat="server" Text="Select Event:">
            </asp:Label><br /> <asp:DropDownList ID="ddlEvent" runat="server"> 
                <asp:ListItem Text="--Select Event--" Value="" /> 
                <asp:ListItem Text="Tech Conference 2026" Value="Tech Conference 2026" /> 
                <asp:ListItem Text="Health Seminar" Value="Health Seminar" /> 
                <asp:ListItem Text="Business Workshop" Value="Business Workshop" />
            </asp:DropDownList><br />
            <asp:RequiredFieldValidator ID="reqEvent" runat="server" ControlToValidate="ddlEvent" 
                InitialValue="" 
                ErrorMessage="Please select an event." ForeColor="Red" 
                Display="Dynamic" /><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" /><br /><br /> 
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label> 
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please fix the following errors:" /> </div> 

    </form>

</body>

</html>
