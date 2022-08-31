<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ClassSearch.aspx.cs" Inherits="Navbar.ClassSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="pad-top80 col-lg-6">
                    <h1>Class Schedule Search</h1>
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
        <div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <h3>Term</h3>
                </div>
                <div class="col-sm-3">
                    <asp:DropDownList ID="dlTerm" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <h3>Program</h3>
                </div>
                <div class="col-sm-3">
                    <asp:DropDownList ID="dlProg" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br />
            <hr />
            <br />
            <%-- Program Class Listing --%>
            <section>
                <div class="row">
                    <a class="col-lg-3"></a>
                    <asp:Table ID="tblSchedule" runat="server" CssClass="table table-hover col-xs-12 col-lg-6">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">CRN</asp:TableCell>
                            <asp:TableCell runat="server">Prog</asp:TableCell>
                            <asp:TableCell runat="server">Course</asp:TableCell>
                            <asp:TableCell runat="server">Description</asp:TableCell>
                            <asp:TableCell runat="server">Enrolled</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <a class="col-lg-3"></a>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
