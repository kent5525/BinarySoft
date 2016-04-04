<%@ Page Title="View Issue" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="viewFAQ.aspx.vb" Inherits="test1.viewFAQ" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
     <style>
    .question {
        color:red;
        font-weight:bold;
        
    }
    .solution {
        font-weight:bold;
    }
</style>
    <h2>Question Details</h2>
    <div class="form-group">
    <asp:Repeater ID="Repeater1" runat="server">
    
        <ItemTemplate>
               <div>
                   <p class="question">Question <%#Container.ItemIndex +1 %> : <%#DataBinder.Eval(Container.DataItem, "Question")%></p><br />
                   <p class="solution">Solution : &nbsp;<%#DataBinder.Eval(Container.DataItem, "Solution")%></p><br />
                   <b>Update On:&nbsp;</b><%#DataBinder.Eval(Container.DataItem, "DateUpdate")%><br /><br />
               </div>
            <hr />
            </ItemTemplate>

     
    </asp:Repeater>
        <a href="FAQ.aspx" class="btn btn-default">Back</a>
        <br />
         <hr />
        <div> If the above information is not what you want,
                     you can click
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Issue/Issue.aspx">here</asp:HyperLink>
                    to ask our customer service will get back to you as soon as possible.
                    Thank you
                </div>
    </div>
</asp:Content>
