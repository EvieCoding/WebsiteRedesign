<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Navbar.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%-- ContentPlaceHolder1 indicates the name of the placeholder on the Master page where your HTML 
    will be placed at run time --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="pad-top80 align-center">
                    <h1>Computer Information Technology</h1>
                </div>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col col-lg-3">
                <div class="card mar-bot30 bg-light" style="width: 300px;">
                    <div class="card-body">
                        <h4 class="card-title">Program Announcement</h4>
                        <p class="card-text">
                            If You Major in Computer Information Systems, Computer Technology, or Computer Networking 
                            effective Fall 2016 NSCC will offer only one computer-related degree: Computer Information Technology
                        </p>
                        <a  href="#" class="card-link"></a>
                    </div>
                 </div>
                <div class="card bg-light" style="width: 300px;">
                    <div class="card-body">
                        <h4 class="card-title">Advising Sheets</h4>
                        <p class="card-text">CIT AAS Degree Concentrations</p>
                        <ol style="list-style-type: disc;">
                            <li><a href="http://ww2.nscc.edu/depart/docs/citc/Adv_CITCdefenseAAS.pdf" target="_blank" class="card-link">Cyber Defense</a></li>
                            <li><a href="http://ww2.nscc.edu/depart/docs/citc/Adv_CITCnetworkingAAS.pdf" target="_blank" class="card-link">Networking</a></li>
                            <li><a href="http://ww2.nscc.edu/depart/docs/citc/Adv_CITCprogrammingAAS.pdf" target="_blank" class="card-link">Programming</a></li>
                            <li><a href="http://ww2.nscc.edu/depart/docs/citc/Adv_CITCsys-admin-mgmtAAS.pdf" target="_blank" class="card-link">Systems Administration and Management</a></li>
                            <li><a href="http://ww2.nscc.edu/depart/docs/citc/Adv_CITCsys-analystAAS.pdf" target="_blank" class="card-link">Systems Analyst</a></li>
                        </ol>
                        <p class="card-text">Technical Certificate</p>
                        <ol style="list-style-type: disc;">
                            <li><a href="http://ww2.nscc.edu/depart/docs/infosecurity/Adv_InformationSecurityTechCert.pdf" target="_blank" class="card-link">Information Security</a></li>
                        </ol>
                        <p class="card-text">AS Tennessee Transfer Pathway</p>
                        <ol style="list-style-type: disc;">
                            <li><a href="http://ww2.nscc.edu/depart/docs/TTP/TTP_ComputerScienceAS.pdf" target="_blank" class="card-link">Computer Science TTP</a></li>
                            <li><a href="http://ww2.nscc.edu/depart/docs/TTP/TTP_InformationSystemsAS.pdf" target="_blank" class="card-link">Information Systems TTP</a></li>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div>
                    <p class="lead">Program Description</p>
                    <p>
                    The Associate of Applied Science degree in Computer Information Technology prepares students for positions 
                    in the workplace through the use of various systems, applications, languages and products. The 
                    concentrations offered at Nashville State Community College include Cyber Defense, Networking, Programming, 
                    Systems Administration and Management, and Systems Analyst. The program consists of a common core of General 
                    Education and Computer Information Technology major core courses, combined with subject-specific courses 
                    designed to address skills within the concentration area.
                    </p>
                    <p>
                    These subject-specific courses focus on those skillsets identified by employers as essential in today’s 
                    workplace and, where appropriate, will prepare students for industry-recognized certification examinations. 
                    The concentrations are designed to ensure that students have the proper experience, training, and skills 
                    to begin work in the chosen field upon successful completion of the chosen program of study.
                    </p>
                    <hr />
                    <p class="lead">Program Outcomes</p>
                    <div>
                        <p>Students will be able to:</p>
                    <br />
                    </div>
                    <ol>
                        <li>Utilize diverse disciplines to enhance communication, research, business and technology skills in the workplace.</li>
                        <li>Execute programming languages in the process of design and implementation while developing and maintaining software.</li>
                        <li>Develop effective problem-management and decision-making skills.</li>
                        <li>Demonstrate various networking media and connections to explain the features and capabilities of networking software.</li>
                        <li>Demonstrate skill and knowledge in preparation for industry-recognized certification examinations.</li>
                    </ol>
                    <div>
                        <p>Note: This program is not designed as a transfer program to a four-year institution.</p>
                    </div>
                    <hr />
                </div>
            </div>
            <div class="col col-lg-3">
                 <div class="card mar-bot30 bg-light" style="width: 300px;">
                     <div class="card-body">
                        <h4 class="card-title">Contact Us</h4>
                        <p>
                            <a href="mailto:Johannah.Williams@nscc.edu" class="card-link">Johannah Williams</a>, Dean, K-240B<br />
                            Phone: (615) 353-3117<br />
                        </p>
                        <p>
                            <a href="mailto:Helen.Kunkel@nscc.edu" class="card-link">Helen Kunkel</a>, Secretary III, K-204A<br />
                            Phone: (615) 353-3369<br />
                        </p>
                        <p>
                            <a href="mailto:Yvonne.Anderson@nscc.edu" class="card-link">Yvonne Anderson</a>, Secretary II, C-237A<br />
                            Phone: (615) 353-3771<br />
                        </p>
                        <p>
                            <a href="https://www.nscc.edu/directory" class="card-link">Campus Directory</a>
                        </p>
                    </div>
                </div>
                <div class="card bg-light" style="width: 300px;">
                    <div class="card-body">
                        <h4 class="card-title">Helpful Links</h4>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a href="https://my.nscc.edu" target="_blank" class="card-link">MyNSCC</a></li>
                                        <li><a href="https://www.nscc.edu/admissions/"  target="_blank" class="card-link">Admissions</a></li>
                                        <li><a href="https://www.nscc.edu/current-students/records-office"  target="_blank" class="card-link">Records</a></li>
                                        <li><a href="https://elearn.nscc.edu"  target="_blank" class="card-link">NsOnline</a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a href="http://catalog.nscc.edu/" target="_blank" class="card-link">NSCC Catalog</a></li>
                                        <li><a href="https://www.nscc.edu/current-students/on-campus-resources/career-services" target="_blank" class="card-link">Career Services Office</a></li>
                                        <li><a href="http://www.nscc.edu/about/calendar/" target="_blank" class="card-link">NSCC Events</a></li>
                                        <li><a href="https://gotoclass.tnecampus.org/d2l/login/" target="_blank" class="card-link">TN eCampus</a></li>
                                    </ul>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <p>     </p>
            </div>
            <div class="col-lg-6">
                <!-- Concentrations -->
                <a name="Concentrations"></a>
                <p class="lead">Concentrations</p>
                <!-- Classes Descriptions -->
                <div id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                     <h5 class="mb-0">
                        <a data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                        Cyber Defense
                        </a>
                     </h5>
                    </div>

                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <p>              
                                The Cyber Defense Concentration will focus on topics in cyber security and digital forensics. 
                                The students will learn how to fortify computer networks in order to prevent security breaches 
                                from cyber terrorists or other intruders. In addition, students will learn how to recover data 
                                using digital forensics techniques. Students will also develop strong critical thinking skills 
                                and will learn by doing within a hands-on lab environment along with real world internship experiences.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <a data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Networking
                            </a>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            <p>
                                Students in the Networking Concentration will complete coursework and hands-on experiences 
                                in planning, design, implementation, and maintenance of networks of different sizes. In addition 
                                to networking skills, students will also complete Computer Science coursework in security, 
                                operating systems, server management, and programming, in combination with other technology 
                                courses. Certifications applicable to this concentration may include Network+, A+, and Cisco CCNA, 
                                among others.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <a data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Programming
                            </a>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            <p>
                                This concentration is a preparation for a career as a programmer or software engineer. 
                                Emphasis is placed on issues related to knowing how to use the features of object programming 
                                languages like java, the design and implementation of classes and objects, the process of 
                                developing and maintaining software. Students will also develop strong critical thinking skills 
                                and will learn by doing along with real world internship experiences. This concentration may 
                                include preparation for the Oracle certified Associate (Java Programmer Certification). 
                            </p>
                        </div>
                    </div>
                </div>
                <!--- Systems Administration and Management --->
                <div class="card">
                    <div class="card-header" id="headingFour">
                        <h5 class="mb-0">
                            <a data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            Systems Administration and Management
                            </a>
                        </h5>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                        <div class="card-body">
                            <p>
                                The Systems Administration & Management Concentration focuses on the design, implementation, 
                                management and troubleshooting of computer systems. Required courses prepare students to 
                                acquire, install, configure, upgrade and secure standalone, networked and mobile systems. 
                                Areas of emphasis include Windows and Linux/Unix operating systems.
                            </p>
                        </div>
                    </div>
                </div>
                <!--- Systems Analyst --->
                <div class="card">
                    <div class="card-header" id="headingFive">
                        <h5 class="mb-0">
                            <a data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            Systems Analyst
                            </a>
                        </h5>
                    </div>
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                        <div class="card-body">
                            <p>
                                The Systems Analyst concentration prepares the student to solve computer problems and apply 
                                computer technology to meet the needs of their organization. The concentration includes diverse 
                                disciplines to enhance the communication, research, business, and technology skills of the student. 
                            </p>
                        </div>
                    </div>
                </div>
                <!--- Infromation Security Technical Certificate --->
                <div class="card">
                    <div class="card-header" id="headingSix">
                        <h5 class="mb-0">
                            <a data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                            Information Security Technical Certificate
                            </a>
                        </h5>
                    </div>
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                        <div class="card-body">
                            <p>
                                The Information Security Technical Certificate provides students with the necessary skills to 
                                protect an organization’s resources using security tools on a variety of operating systems. The 
                                program covers methods employed by hackers to compromise computing devices, and prepares students 
                                to recognize compromised systems. The program emphasizes the importance of security policies and 
                                the techniques to effectively design such policies.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="col-lg-3">
                <p>     </p>
            </div>
        </div>
    </div>
</asp:Content>
