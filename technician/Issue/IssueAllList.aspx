<%@ Page Title="All Issue" Language="vb" AutoEventWireup="false" MasterPageFile="~/technician.master" CodeBehind="IssueAllList.aspx.vb" Inherits="test1.IssueAllList1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
<h2>Issue List (All)</h2>
    <div class="form-horizontal">
        <asp:Repeater ID="users" runat="server">

            <HeaderTemplate>
                <table class="table table-striped table-hover">
                    <tr>
                        
                        <th>Issue ID</th>
                        <th>Subject</th>
                        <th>Description</th>
                        <th>Author</th>
                        <th>Date Create</th>
                        <th>Status</th>
                        <th>System</th>
                        

                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    
                    <td><%#DataBinder.Eval(Container.DataItem, "Id")%></td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Subject")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Description")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Author")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Date")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Status")%> </td>
                    <td><asp:HyperLink runat="server" NavigateUrl='<%# String.Format("~/technician/Issue/IssueView.aspx?Id={0}&Subject={1}&Description={2}&Author={3}&Date={4}",
                        HttpUtility.UrlEncode(Eval("Id").ToString()),
                        HttpUtility.UrlEncode(Eval("Subject").ToString()),
                        HttpUtility.UrlEncode(Eval("Description").ToString()),
                         HttpUtility.UrlEncode(Eval("Author").ToString()),
                          HttpUtility.UrlEncode(Eval("Date").ToString()))%>' 
                        Text="View Details" />                       
                    </td>
                    

                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>
    </div>
</asp:Content>
