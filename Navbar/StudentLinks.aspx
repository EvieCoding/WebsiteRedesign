<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="StudentLinks.aspx.cs" Inherits="Navbar.StudentLinks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="pad-top80 col-lg-5">
                    <h1>Student Links</h1>
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
        <div>
            <%-- Student Links listing --%>
            <section>
                <div class="row">
                    <a class="col-lg-2"></a>
                    <asp:Table ID="tblStudentLinks" runat="server" CssClass="table table-hover col-xs-12 col-lg-8">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Organization</asp:TableCell>
                            <asp:TableCell runat="server">Description</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <a class="col-lg-2"></a>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

