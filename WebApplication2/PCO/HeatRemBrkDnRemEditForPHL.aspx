<%@ Page Language="vb" AutoEventWireup="false" Codebehind="HeatRemBrkDnRemEditForPHL.aspx.vb" Inherits="WebApplication2.HeatRemBrkDnRemEditForPHL" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML >
<HTML>
	<HEAD>
		<title>HeatRemBrkDnRemEditForPHL</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

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
	</HEAD>
	<body  >
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
			<asp:panel id="Panel1"  runat="server">
               
				<TABLE id="Table1" class="table">
					<TR>
						<TD align="center" colSpan="2"><h2>PCO Updates to Remarks on Exception Heats &amp; 
							Breakdowns </h2><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>Message</TD>
						<TD>
							<asp:label id="lblMessage" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:label></TD>
					</TR>
					<TR>
						<TD>Emp Code
						</TD>
						<TD>
							<asp:label id="lblEmpCode" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD noWrap="nowrap">PHL Date</TD>
						<TD>
							<asp:label id="lblDate" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD noWrap="nowrap">Remarks for
						</TD>
						<TD>
							<asp:radiobuttonlist id="rdoDataHead" runat="server" RepeatLayout="Flow" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="rbl">
								<asp:ListItem Value="ExceptionHeats">ExceptionHeats</asp:ListItem>
								<asp:ListItem Value="Breakdowns">Breakdowns</asp:ListItem>
							</asp:radiobuttonlist></TD>
					</TR>
					<TR>
						<TD vAlign="top" colSpan="2"><STRONG><U>Original Data</U></STRONG>&nbsp;&nbsp;&nbsp;
							<asp:Label id="Label1" runat="server">Production Affected :</asp:Label>
							<asp:Label id="lblProdAff" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>&nbsp;
							<asp:RadioButtonList id="rdoMeltOrPourRems" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="rbl" RepeatLayout="Flow">
								<asp:ListItem Value="Melt Remarks">Melt Remarks</asp:ListItem>
								<asp:ListItem Value="Pour Remarks">Pour Remarks</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD  vAlign="top" colSpan="2">
							<asp:label id="lblOriginalData" runat="server" ></asp:label></TD>
					</TR>
					<TR>
						<TD vAlign="top" colSpan="2"><STRONG><U>Modified Data:</TD>
									<TD vAlign="top" colSpan="2"><asp:label id="lblHeatNo" runat="server" Visible="True"></asp:label></TD>
									<TD vAlign="top" colSpan="2"><asp:label id="lblBrkFrom" runat="server" Visible="True"></asp:label></TD>
									<TD vAlign="top" colSpan="2"><asp:label id="lblMaintGrp" runat="server" Visible="True"></asp:label></TD>
									<TD vAlign="top" colSpan="2"><asp:label id="lblMcnCode" runat="server" Visible="True"></asp:label></TD>
									<TD vAlign="top" colSpan="2"><asp:label id="lblMemoNumber" runat="server" Visible="True"></asp:label></U></STRONG></TD>
					</TR>
					<TR>
						<TD vAlign="top" colSpan="2" rowSpan="1">&nbsp;
							<asp:textbox id="txtNewData" runat="server" CssClass="form-control" MaxLength="1500" TextMode="MultiLine" ToolTip="enter new Data"></asp:textbox></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="2">From Time :
							<asp:TextBox id="txtBreakFromTime" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:RadioButtonList id="rblProdAffect" runat="server" RepeatDirection="Horizontal" CssClass="rbl" RepeatLayout="Flow">
								<asp:ListItem Value="1">Production Affected</asp:ListItem>
								<asp:ListItem Value="0">Production Not Affected</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="2">
							<asp:button id="btnUpdate" runat="server" Text="Update" CssClass="button button2"></asp:button></TD>
					</TR>
				</TABLE>
				<asp:datagrid id="dgData" runat="server" GridLines="None" CssClass="table" AllowPaging="true">
					<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#9471DE"></SelectedItemStyle>
					<ItemStyle ForeColor="Black" BackColor="#DEDFDE"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#E7E7FF" BackColor="#4A3C8C"></HeaderStyle>
					<FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#C6C3C6"></PagerStyle>
				</asp:datagrid>
                    
			</asp:panel></form>
            </div></div></div>
         <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</HTML>
