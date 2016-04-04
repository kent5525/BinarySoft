<%@ Page Title="Product List" Language="vb" AutoEventWireup="false" MasterPageFile="~/customer.master" CodeBehind="RegisterProductList.aspx.vb" Inherits="test1.RegisterProductList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <br />
    <br />
    <br />

    <h2>Product Register List</h2>
    <div class="form-horizontal">
        <asp:Repeater ID="users" runat="server">

            <HeaderTemplate>
                <table class="table table-striped table-hover">
                    <tr>
                        <th>No</th>
                        <th>First Name</th>
                        <th>Last Name</th> 
                        <th>Model</th>
                        <th>Serial Number</th>
                        <th>Date Register</th>
                        

                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><%#Container.ItemIndex +1 %></td>
                    <td><%#DataBinder.Eval(Container.DataItem, "FirstName")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "LastName")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Model")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "SerialNumber")%> </td>
                    <td><%#DataBinder.Eval(Container.DataItem, "Date")%> </td>
                    

                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>
    </div>
</asp:Content>
