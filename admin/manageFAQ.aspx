<%@ Page Title="Manage FAQ" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.master" CodeBehind="manageFAQ.aspx.vb" Inherits="test1.manageFAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [FAQ] WHERE [Id] = @Id" InsertCommand="INSERT INTO [FAQ] ([Id], [Question], [Solution], [DateUpdate]) VALUES (@Id, @Question, @Solution, @DateUpdate)" SelectCommand="SELECT * FROM [FAQ]" UpdateCommand="UPDATE [FAQ] SET [Question] = @Question, [Solution] = @Solution, [DateUpdate] = @DateUpdate WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Solution" Type="String" />
            <asp:Parameter Name="DateUpdate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Solution" Type="String" />
            <asp:Parameter Name="DateUpdate" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CssClass="form-horizontal table table-striped table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="0" GridLines="None">
        <AlternatingRowStyle BorderStyle="None" />
        <Columns><asp:TemplateField HeaderText="No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
           
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="Solution" HeaderText="Solution" SortExpression="Solution" />
            <asp:BoundField DataField="DateUpdate" HeaderText="Date Update" SortExpression="DateUpdate" ReadOnly="True" />
            <asp:CommandField HeaderText="System" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-default">
                <ControlStyle CssClass="btn btn-default"></ControlStyle>
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <i>You are viewing page
        <%=GridView1.PageIndex + 1%>
        of
        <%=GridView1.PageCount%>
    </i>

</asp:Content>
