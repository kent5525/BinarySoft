<%@ Page Title="Add FAQ" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.master" CodeBehind="addFAQ.aspx.vb" Inherits="test1.addFAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <br />
    <br />
    <br />
       <h2>New FAQ</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">


        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Question</asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtQuestion" CssClass="form-control" />

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtQuestion"
                    ErrorMessage="Question is a required field."
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Solution</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtSolution" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtSolution"
                    ErrorMessage="Solution is a required field."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
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
