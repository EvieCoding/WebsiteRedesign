<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CITFaculty.aspx.cs" Inherits="Navbar.CITFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="pad-top80 col-lg-10">
                    <h1>Computer Information technology Faculty</h1>
                </div>
            </div>
        </div>
        <div>
            <%-- Faculty listings --%>
            <section>
                <div class="row">
                    <a class="col-lg-2"></a>
                    <asp:Table ID="tblFaculty" runat="server" CssClass="table table-hover col-xs-12 col-lg-8">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Professor</asp:TableCell>
                            <asp:TableCell runat="server">Title</asp:TableCell>
                            <asp:TableCell runat="server">Phone</asp:TableCell>
                            <asp:TableCell runat="server">Office</asp:TableCell>
                            <asp:TableCell runat="server">Advising Area</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <a class="col-lg-2"></a>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

