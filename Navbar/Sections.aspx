<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Sections.aspx.cs" Inherits="Navbar.Sections" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Sections.css" rel="stylesheet" />
    <link href="Content/animate.css" rel="stylesheet" />
    <%-- https://github.com/michalsnik/aos --%>
    <%-- http://michalsnik.github.io/aos/ --%>
    <link href="Content/aos.css" rel="stylesheet" />
    <script src="Scripts/aos.js"></script>

    <script>
        AOS.init();
    </script>

    <%-- Each section will have its own theme --%>
	<section id="section-about" class="section about-theme"> 
	    <div class="container" >  
			<div class="row" > 
				<div class="col-md-offset-2 col-md-8">
					<div class="section-header" data-aos="fade-down" data-aos-easing="ease-in-out-sine" data-aos-duration="600">
						<h1 class="align-center">Section About Text</h1>
						<h3 class="align-center">By Your Company</h3>
					</div>
				</div>
			</div>
        </div>
    </section>
	<section id="section-groups" class="section color-theme-1"> 
	    <div class="container"> 
			<div class="row align-center"> 
				<div class="col-md-4">
					<div class="team-member" data-aos="zoom-in-left" data-aos-easing="ease-in-out-sine" data-aos-duration="600" >
						<figure class="member-photo"><img src="Images/01.jpg" alt="" /></figure>
						<div class="team-detail">
							<h4><a href="#CEOSection">CEO</a></h4>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="team-member" data-aos="zoom-in-left" data-aos-easing="ease-in-out-sine" >
						<figure class="member-photo"><img src="Images/02.jpg" alt="" /></figure>
						<div class="team-detail">
							<h4><a href="#CIOSection">CIO</a></h4>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="team-member" data-aos="zoom-in-left">
						<figure class="member-photo"><img src="Images/03.jpg" alt="" /></figure>
						<div class="team-detail">
    						<h4><a href="#COOSection">COO</a></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



</asp:Content>
