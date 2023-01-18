<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postion.aspx.cs" Inherits="Infinite.Week7.Test.postion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   
    
</head>
<body class mt-4>
    <h1>create new class</h1>
    <form id="form1" runat="server">
      <div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-5">
<div class="mb-2 row">
<label class="form-label col-md-4">Position Code</label>
<div class="col-md-8">
<asp:TextBox ID="TxtPositionCode" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="Rfvpositoncode" runat="server" ControlToValidate="TxtPositionCode" ErrorMessage="Please enter Position Code"></asp:RequiredFieldValidator>
</div>
</div>
</div>
</div>
</div>

<div class="row">`  
<div class="col-md-3"></div>
<div class="col-md-5">
<div class="mb-2 row">
<label class="form-label col-md-4">Description</label>
<div class="col-md-8">
<asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RfvDescription" runat="server" ControlToValidate="TxtDescription" ErrorMessage="Please enter Description"></asp:RequiredFieldValidator>
</div>
</div>
</div>
</div>

<div class="row">`  
<div class="col-md-3"></div>
<div class="col-md-5">
<div class="mb-2 row">
<label class="form-label col-md-4">year</label>
<div class="col-md-8">
<asp:DropDownList ID="DdlYear" CssClass="form-select" runat="server"> 
<asp:ListItem>----Select----</asp:ListItem>
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>2024</asp:ListItem>
<asp:ListItem>2025</asp:ListItem>
<asp:ListItem>2026</asp:ListItem>
<asp:ListItem>2027</asp:ListItem>
<asp:ListItem>2028</asp:ListItem>
</asp:DropDownList>

<asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="Rfvyear" runat="server" ControlToValidate="DdlYear" ErrorMessage="Please select a year"></asp:RequiredFieldValidator>
</div>
</div>
</div>
</div>

<div class="row">`  
<div class="col-md-3"></div>
<div class="col-md-5"></div>
<div class="mb-2 row"></div>
<label class="form-label col-md-4">BudgetedStrength</label>
<div class="col-md-8"></div>
<asp:TextBox ID="TxtBudgetedstrength" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="Rfvbudgetedstrength" runat="server" ControlToValidate="Txtbudgetedstrength" ErrorMessage="Please enter BudgetedStrength"></asp:RequiredFieldValidator>
</div>



<div class="row">`  
<div class="col-md-3"></div>
<div class="col-md-5">
<div class="mb-2 row">
<label class="form-label col-md-4">CurrentStrength</label>
<div class="col-md-8">
<asp:TextBox ID="Txtcurrentstrength" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="Rfvcurrentstrength" runat="server" ControlToValidate="Txtcurrentstrength" ErrorMessage="Please enter current strength"></asp:RequiredFieldValidator>
</div>
</div>
</div>
</div>

<div class="mb-2">
<asp:Button Text="Add New" ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" CssClass="btn btn-info" />
<asp:Button Text="Reset" ID="BtnReset" runat="server" OnClick="BtnReset_Click"  CssClass="btn btn-danger"/>
</div>
        <div>
            <asp:Label ID="LblMessage" runat="server"></asp:Label>
        </div>

</form>
</body>
</html>

       
  