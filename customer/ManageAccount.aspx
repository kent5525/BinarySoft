<%@ Page Title="Completed Create User" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="ManageAccount.aspx.vb" Inherits="test1.ManageAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
     <h2>User Information</h2>
   
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
       
       
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtFname" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtFname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFname"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtLname" CssClass="col-md-2 control-label">Last Name</asp:Label>
             <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtLname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLname"
                    CssClass="text-danger" ErrorMessage="The last name field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtAddress" CssClass="col-md-2 control-label">Address</asp:Label>
             <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPhone" CssClass="col-md-2 control-label">Phone</asp:Label>
             <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                    CssClass="text-danger" ErrorMessage="The phone field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary" />
                <asp:Button runat="server" ID="btnCancel" Text="Cancel" CssClass="btn btn-default" />
            </div>

        </div>

    </div>
</asp:Content>
