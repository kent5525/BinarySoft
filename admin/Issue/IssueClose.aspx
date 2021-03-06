﻿<%@ Page Title="Close" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.master" CodeBehind="IssueClose.aspx.vb" Inherits="test1.IssueClose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
    <br />
    <br />
    <div>
     <div class="form-horizontal">
        <h2>Issue # &nbsp;<asp:Label ID="lblId" runat="server"  ></asp:Label></h2>
        <div class="form-group">
            <asp:Label runat="server" ID="txt1" CssClass="col-md-2 " Font-Bold="True">Subject</asp:Label>
            <div class="col-md-10">
             <asp:Label runat="server" ID="txtSubject" CssClass="col-md-5  "></asp:Label>  
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="Label1" CssClass="col-md-2" Font-Bold="True">Create By</asp:Label>
            <div class="col-md-10">
             <asp:Label runat="server" ID="txtAuthor" CssClass="col-md-5 "></asp:Label>  
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" ID="Label2" CssClass="col-md-2" Font-Bold="True">Discription</asp:Label>
            <div class="col-md-10">
             <asp:Label runat="server" ID="txtDes" CssClass="col-md-5 "></asp:Label>  
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" ID="Label3" CssClass="col-md-2 " Font-Bold="True">Date Create</asp:Label>
            <div class="col-md-10">
             <asp:Label runat="server" ID="txtDate" CssClass="col-md-5 "></asp:Label>  
            </div>
        </div>
    </div>
    <hr />
         <asp:Button runat="server" ID="btnClose" Text="Close" CssClass="btn btn-danger " />
         <a href="IssueList.aspx" class="btn btn-default">Back</a>
    <div>
    <h2>History</h2>
        <div class="form-group">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label3" CssClass="col-md-3 " Font-Bold="True"> <%#DataBinder.Eval(Container.DataItem, "PersonReply")%>,<%#DataBinder.Eval(Container.DataItem, "DateReply")%></asp:Label>
                            <div class="col-md-9">
                                <asp:Label runat="server" ID="txtDate" > <%#DataBinder.Eval(Container.DataItem, "Message")%></asp:Label>                               
                            </div>
                              <hr /> 
                        </div>  
                    <hr />   
                </ItemTemplate>

            </asp:Repeater>
        </div>

    </div>
  
        
    </div>
     
   
    
    
</asp:Content>
