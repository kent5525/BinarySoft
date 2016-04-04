<%@ Page Title="Issue Detail" Language="vb" AutoEventWireup="false" MasterPageFile="~/technician.master" CodeBehind="IssueDetail.aspx.vb" Inherits="test1.IssueDetail2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent2" runat="server">
      <br />
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
    <div>
    <h2>History</h2>
        <div class="form-group">
            <asp:Repeater ID="Repeater1" runat="server">
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
    <hr />
    <div class="fort-horizontal">
        <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
        <h2>Reply</h2>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtMsg" CssClass="col-md-2 " Font-Bold="True">Message</asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="txtMsg" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMsg"
                    CssClass="text-danger" ErrorMessage="The message field is required." />
            </div>
        </div>
        
         <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <div class="col-md-5">
                <asp:Button runat="server" ID="btnReply" Text="Reply" CssClass="btn btn-primary " /></div>                
            </div>
        </div>
        <br />
    </div>
    
       <br /><br />
        </div>
     <hr />  
</asp:Content>
