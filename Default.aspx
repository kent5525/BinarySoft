<%@ Page Title="Home" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master1.Master" CodeBehind="Default.aspx.vb" Inherits="test1._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     #bg {
         position: fixed;
         top: -50%;
         left: -50%;
         width: 200%;
         height: 200%;
     }

         #bg img {
             position: absolute;
             top: 0;
             left: 0;
             right: 0;
             width:100%;
             margin: auto;
         }

     #front_page {
        display: inline-block;
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        width: auto;
        height: 200px;
        margin: auto;
        color: white;         
        text-align: center;
     }

     #front_page h1 {
        font-size: 50px;
        font-weight: 900;
     }
 </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /><br /><br />
    <div class="row">
        <div id="bg">
            <img src="img/landing.jpg" alt="landing_page" />
        </div>
        <div id="front_page">
            <div class="col-md-12">
                <h1>Welcome to BinarySoft </h1>
                <h3><%: DateTime.Now.ToString() %></h3>
            </div>
        </div>
    </div>
</asp:Content>
