<%@ Page Title="User List" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.master" CodeBehind="UserList.aspx.vb" Inherits="test1.UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <br />
    <br />
    <br />
    <h2>User List</h2>
    <asp:GridView ID="gridUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" CssClass="form-horizontal table table-striped table-hover" CellPadding="0" GridLines="None">
        <AlternatingRowStyle BorderStyle="None" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="User Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" HeaderText="System">
                <ControlStyle CssClass="btn btn-default" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <i>You are viewing page
        <%=gridUsers.PageIndex + 1%>
        of
        <%=gridUsers.PageCount%>
    </i>
    <br />
    <asp:DetailsView ID="detailsUser" runat="server"></asp:DetailsView>

</asp:Content>
