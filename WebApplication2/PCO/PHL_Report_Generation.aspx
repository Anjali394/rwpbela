<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PHL_Report_Generation.aspx.vb" Inherits="WebApplication2.PHL_Report_Generation" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>PHL_Report_Generation</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
         <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

         <link rel="stylesheet" href="../StyleSheet1.css" />
	</head>
	<body>
         <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
  <a class="navbar-brand p-0" href="#"><img src="../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarSupportedContent-333">
      <ul class="navbar-nav ml-auto  navbar-center">
          <li class="nav-item"> <a class="nav-link" href="#" style="color:white; font-size:25px;">Rail Wheel Plant Bela</a></li>
      </ul>
    <ul class="navbar-nav ml-auto  navbar-right">
        <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
<!--/.Navbar -->

         
         <div class="container">
              <div class="row">
                <div class="table-responsive">
		<form id="Form1" method="post" runat="server">
            <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
			<table id="Table1" class="table">
				<TR>
					<TD vAlign="center" align="middle" colSpan="3"><h2>PRODUCTION HIGHLIGHTS REPORT 
							GENERATION*</h2><hr class="prettyline" /></TD>
				</TR>
                </table>
				<TR>
					<TD colSpan="3">
						<TABLE id="Table2" class="table">
							<TR>
								<TD noWrap>Click "<FONT color="#6666ff"><STRONG>Check All Not Done</STRONG></FONT>"&nbsp;&nbsp;to 
									check mark sub&nbsp;reports not&nbsp;generated.</TD>
							</TR>
							<TR>
								<TD noWrap>You may click any sub-report to mark checked/un-checked.</TD>
							</TR>
							<TR>
								<TD>Each Check marked sub-report will be generated/re-generated after you click <FONT color="#6666ff">
										<STRONG>Generate/Re-Generate</STRONG></FONT> Button.</TD>
							</TR>
							<TR>
								<TD>Check boxes will be cleared if generation is successful else suitable message 
									will be displayed and next sub-reports will not be generated/re-generated.</TD>
							</TR>
							<TR>
								<TD noWrap>
									<P>Manually clear the Sub-report check box to skip generation/re-generation and 
										report it MIS Centre.</P>
								</TD>
							</TR>
						</TABLE>
					<table class="table">
				<TR>
					<TD>Message</TD>
					<TD>:</TD>
					<TD><asp:label id="lblmessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:label></TD>
				</TR>
                        </table>
				
						<TABLE id="Table3" class="table">
							<TR>
								<TD>Date</TD>
								<TD>:</TD>
								<TD><asp:textbox id="txtPHLDate" runat="server" CssClass="form-control" AutoPostBack="True"></asp:textbox></TD>
								<TD>Process Style 
								</TD>
								<TD>:</TD>
								<TD><asp:radiobuttonlist id="rdoProcessStyle" runat="server" AutoPostBack="True" CssClass="rbl" RepeatLayout="Flow" RepeatDirection="Horizontal">
										<asp:ListItem Value="Queue" Selected="True">Queue</asp:ListItem>
										<asp:ListItem Value="Single">Single</asp:ListItem>
									</asp:radiobuttonlist></TD>
								<TD>Process Option 
								</TD>
								<TD>:</TD>
								<TD><asp:checkbox id="chkAll" runat="server" AutoPostBack="True" Text="Check All Not Done"></asp:checkbox></TD>
							</TR>
					<table class="table">
				<TR>
					<TD vAlign="top" colSpan="3" rowSpan="1">
						<P><asp:checkbox id="chkHighlights" runat="server" AutoPostBack="True" Text="Highlights"></asp:checkbox></P>
						<P><asp:checkboxlist id="chkGenList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
								<asp:ListItem Value="HD">Heats of the Day</asp:ListItem>
								<asp:ListItem Value="ps">Production Summary</asp:ListItem>
								<asp:ListItem Value="HE">Heat Exceptions</asp:ListItem>
								<asp:ListItem Value="ds">Despatched Wheelsets</asp:ListItem>
								<asp:ListItem Value="DA">Despatched Axles</asp:ListItem>
								<asp:ListItem Value="DW">Despatched Wheels</asp:ListItem>
								<asp:ListItem Value="SFB">Shop Floor Balance (Wheels)</asp:ListItem>
								<asp:ListItem Value="ASP">Axle Shop Production</asp:ListItem>
								<asp:ListItem Value="LA">Loose Axles Available</asp:ListItem>
								<asp:ListItem Value="WS">WheelSets</asp:ListItem>
								<asp:ListItem Value="WSI">Wheelset Inventory</asp:ListItem>
							</asp:checkboxlist></P>
					</TD>
				</TR>
				<TR>
					<TD align="middle" colSpan="3">
                        <asp:button id="btnGenReport" runat="server" Text="Generate Report" CssClass="button button2"></asp:button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</html>
