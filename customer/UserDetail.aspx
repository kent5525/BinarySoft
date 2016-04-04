<%@ Page Title="User Detail" Language="vb" AutoEventWireup="false" MasterPageFile="~/customer.master" CodeBehind="UserDetail.aspx.vb" Inherits="test1.UserDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <br />
    <br />
    <br />

    <h2>User Details</h2>
    <div class="form-horizontal">
        <asp:Repeater ID="users" runat="server">

            <HeaderTemplate>
                <table class="table table-striped table-hover">
                    <tr>

                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>E-mail</th>
                        <th>System</th>


                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblFname" runat="server" Text='<%#Eval("FirstName")%>' />
                        <asp:TextBox ID="txtFname" runat="server" Text='<%#Eval("FirstName")%>' Visible="false"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblLname" runat="server" Text='<%#Eval("LastName")%>' />
                        <asp:TextBox ID="txtLname" runat="server" Text='<%#Eval("LastName")%>' Visible="false"></asp:TextBox>                        
                    </td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("Address")%>' />
                        <asp:TextBox ID="txtAddress" runat="server" Text='<%#Eval("Address")%>' Visible="false"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("Phone")%>' />
                        <asp:TextBox ID="txtPhone" runat="server" Text='<%#Eval("Phone")%>' Visible="false"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email")%>' />
                       <%-- <asp:TextBox ID="txtEmail" runat="server" Text='<%#Eval("Email")%>' Visible="false"></asp:TextBox>--%>
                    </td>
                      <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="edit">Edit</asp:LinkButton>           
                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="update" Visible="false">Update</asp:LinkButton>
                        <asp:LinkButton ID="lnkCancel" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="cancel" Visible="false">Cancel</asp:LinkButton>
                      </td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>


    </div>
</asp:Content>
