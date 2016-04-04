<%@ Page Title="Login" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="Login.aspx.vb" Inherits="test1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />

    <asp:Login ID="Login1" runat="server">
        <LayoutTemplate>
            <h2>Log In</h2>
            <br />
            <div class="form-horizontal ">
                <div class="form-group col-md-12">
                    <label class="col-md-6 ">User Name</label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="col-md-6 form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-12">
                    <label class="col-md-6 ">Password</label>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="col-md-4 form-control"></asp:TextBox>
                </div>
                <asp:Button ID="submitLoginBtn" CommandName="Login" runat="server" CssClass="btn btn-default" Text="Login" /><br />
                <br />

                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

            </div>
        </LayoutTemplate>
    </asp:Login>
    <div>
        No have account ?<br />
        Click
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Here</asp:HyperLink>
        to sign up an account.
    </div>

</asp:Content>
