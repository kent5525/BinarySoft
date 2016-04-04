<%@ Page Title="Add Issue" Language="vb" AutoEventWireup="false" MasterPageFile="~/customer.master" CodeBehind="AddIssue.aspx.vb" Inherits="test1.AddIssue1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <h2>Report an Issue</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h5>Fill in the detail information</h5>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSubject" CssClass="col-md-2 control-label">Subject</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSubject"
                    CssClass="text-danger" ErrorMessage="The subject field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDesc" CssClass="col-md-2 control-label">Description</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtDesc" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDesc"
                    CssClass="text-danger" ErrorMessage="The description field is required." />
            </div>
        </div>

       
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" />
                <asp:Button runat="server" ID="btnCancel" Text="Cancel" CssClass="btn btn-default" />
            </div>

        </div>

    </div>
</asp:Content>
