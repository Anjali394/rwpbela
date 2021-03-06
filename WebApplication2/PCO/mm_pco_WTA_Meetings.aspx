<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mm_pco_WTA_Meetings.aspx.vb" Inherits="WebApplication2.mm_pco_WTA_Meetings" smartNavigation="True" %>
<!DOCTYPE HTML>
<html  xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>mm_pco_WTA_Meetings</title>
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
            <script>
 function isNumber1(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                      if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
            } 
            </script>
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
			<TABLE id="Table1" class="table" >
                <%--style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" cellSpacing="1" cellPadding="1" width="300"--%> 
				<TR>
					<TD vAlign="top" align="center" colSpan="3"><h2>WTA Number</h2><hr class="prettyline" /></TD>
				</TR>
				<TR>
					<TD colSpan="3">Mode :
						<asp:label id="lblMode" runat="server" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="3">Message :
						<asp:label id="lblMessage" runat="server" ForeColor="Red" ></asp:label></TD>
				</TR></TABLE>
				<asp:panel id="Panel1" runat="server">
							<TABLE id="Table2" class="table" <%--style="WIDTH: 346px; HEIGHT: 147px" cellSpacing="1" cellPadding="1" width="346"--%> >
								<TR>
									<TD>
										<asp:Label id="lblWTANumber" runat="server">Existing WTA Number</asp:Label>&nbsp;</TD>
									<TD>&nbsp;</TD>
									<TD>
										<asp:DropDownList id="ddlWTANumber" runat="server" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>&nbsp;</TD>
								</TR>
								<TR>
									<TD>WTA Number</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtWTANumber" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>WTA Date</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtWTADate" runat="server" AutoPostBack="True" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD>Remarks</TD>
									<TD>:</TD>
									<TD>
										<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control" MaxLength="250">  </asp:TextBox></TD>
								</TR>
                                </TABLE>
                                <TABLE id="Table3" class="table" >
								<TR>
									<TD vAlign="top" align="center" colSpan="3">
										<asp:Button id="btnSave" runat="server" Text="Save" class="button button2"></asp:Button></TD>
								</TR>
                                   
							</TABLE>
						</asp:panel>
				
                
            <div class="table-responsive">
                        <TABLE id="Table4" class="table">
				<TR>
					<TD colSpan="3"><asp:datagrid id="dgData" runat="server" ForeColor="Black" CellPadding="2" BackColor="LightGoldenrodYellow" BorderWidth="1px" BorderColor="Tan" AutoGenerateColumns="False" CssClass="table">
							<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="PaleGoldenrod"></AlternatingItemStyle>
							<HeaderStyle Font-Bold="True" BackColor="Tan"></HeaderStyle>
							<FooterStyle BackColor="Tan"></FooterStyle>
							<Columns>
								<asp:BoundColumn ReadOnly="True" HeaderText="SlNo"></asp:BoundColumn>
								<asp:BoundColumn DataField="WtaNumber" ReadOnly="True" HeaderText="WtaNumber"></asp:BoundColumn>
								<asp:BoundColumn DataField="WtaDate" ReadOnly="True" HeaderText="WtaDate"></asp:BoundColumn>
								<asp:BoundColumn DataField="Remarks" ReadOnly="True" HeaderText="Remarks"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="PaleGoldenrod"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
			          </TABLE></div>
		</form></div></div></div>
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
