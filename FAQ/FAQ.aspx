<%@ Page Title="FAQ" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="FAQ.aspx.vb" Inherits="test1.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
    .question {
        color:red;
        font-weight:bold;
        
    }
    .solution {
        font-weight:bold;
    }
</style>
    <br />
    <br />
    <br />
    <h2>FAQ</h2>
    <div class="form-group">


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="form-horizontal table table-striped table-hover" CellPadding="0" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
           <AlternatingRowStyle BorderStyle="None" />
             <Columns>
                <asp:TemplateField HeaderText="No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                 
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Solution" HeaderText="Solution" SortExpression="Solution" />
                <asp:BoundField DataField="DateUpdate" HeaderText="DateUpdate" SortExpression="DateUpdate" />
                <asp:CommandField ShowSelectButton="True" ButtonType="Link" HeaderText="System" SelectText="View Details"   />


            </Columns>

        </asp:GridView>
        <br />
        <div> If the above information is not what you want,
                     you can click
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/customer/AddIssue.aspx">here</asp:HyperLink>
                    to ask our customer service will get back to you as soon as possible.
                    Thank you
                </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [FAQ]"></asp:SqlDataSource>

    <%--<asp:Repeater ID="Repeater1" runat="server">
    
        <ItemTemplate>
               <div>
                   <p class="question">Question <%#Container.ItemIndex +1 %> : <%#DataBinder.Eval(Container.DataItem, "Question")%></p><br />
                   <p class="solution">Solution : <br /><%#DataBinder.Eval(Container.DataItem, "Solution")%></p><br />
                   <b>Update On</b><%#DataBinder.Eval(Container.DataItem, "DateUpdate")%><br /><br />
               </div>
            <hr />
            </ItemTemplate>

     <FooterTemplate>
                
            </FooterTemplate>
    </asp:Repeater>--%>

    </div>
</asp:Content>
