<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="Register.aspx.vb" Inherits="test1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" >
        <CreateUserButtonStyle CssClass="btn btn-default" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
                <ContentTemplate>
                    <h2>Register New User</h2>
                    <br />
                    <div class="form-horizontal">
                    <div>
                        <label class="form-group col-md-6">User Name</label>
                         <asp:TextBox ID="UserName" runat="server" CssClass="form-control "></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="UserName" ErrorMessage="User Name is required." ID="UserNameRequired" runat="server" ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label class="form-group col-md-6">Password</label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="Password" ErrorMessage="Password is required." ID="PasswordRequired" runat="server" ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label class="form-group col-md-6">Confirm Password</label>
                         <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control "></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required."  ID="ConfirmPasswordRequired" runat="server" ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label class="form-group col-md-6">E-mail</label>
                         <asp:TextBox ID="Email" runat="server" CssClass="form-control "></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Email" ErrorMessage="E-mail is required."
                      ID="EmailRequired" runat="server" ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                         
                    </div>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center">Complete</td>
                        </tr>
                        <tr>
                            <td>Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" CssClass="btn btn-default" Text="Continue" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
