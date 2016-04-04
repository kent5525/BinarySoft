<%@ Page Title="Product Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="RegisterProduct.aspx.vb" Inherits="test1.RegisterProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
     <h2>Register Product</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h5>Fill in the product and owner information</h5>
        <hr />
              
        <h3>Product Information</h3>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Model" CssClass="col-md-2 control-label">Model</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="Model" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Model"
                    CssClass="text-danger" ErrorMessage="The model field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSNumber" CssClass="col-md-2 control-label">Serial Number</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtSNumber" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSNumber"
                    CssClass="text-danger" ErrorMessage="The serial number field is required." />
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-offset-2 col-md-6">
                <asp:Button runat="server" ID="btnRegister" Text="Register" CssClass="btn btn-primary" />
                <asp:Button runat="server" ID="btnCancel" Text="Cancel" CssClass="btn btn-default" />
            </div>

        </div>

    </div>
</asp:Content>
