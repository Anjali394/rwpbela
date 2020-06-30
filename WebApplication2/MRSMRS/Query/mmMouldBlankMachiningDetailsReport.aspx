<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mmMouldBlankMachiningDetailsReport.aspx.vb" Inherits="WebApplication2.mmMouldBlankMachiningDetailsReport" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>mmMouldBlankMachiningDetailsReport</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0"/>
		<meta name="vs_defaultClientScript" content="JavaScript"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
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
        
        <link href="StyleSheet1.css" rel="stylesheet" />
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
 <a class="navbar-brand p-0" href="#"><img src="../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../wapframeset.aspx">
          <i class="fab glyphicon glyphicon-home "></i>
        </a></li>
       <li class="nav-item">
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href=../../logon.aspx">
          <i class="fab glyphicon glyphicon-log-out"></i>
        </a></li>
    
        <li class="nav-item ">
        <a class="nav-link p-0" href="#">
          <img src="../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
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
			<asp:Panel id="Panel1" runat="server">
				<table id="Table1" class="table">
					<TR>
						<TD align="middle" colSpan="4"><h2>MRS Querries</h2><hr class="prettyline" /></TD>
					</TR>
					<TR>
						<TD>Message</TD>
						<TD colspan="3">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:Label></TD>
					</TR>
					<TR>
						<TD>FromDate:</TD>
						<TD>
							<asp:TextBox id="txtFromDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
						<TD>ToDate:</TD>
						<TD>
							<asp:TextBox id="txtToDate" runat="server" CssClass="form-control" AutoPostBack="True" onkeypress="return isNumber1(event,this)" MaxLength="10" placeholder="dd/mm/yyyy"></asp:TextBox></TD>
                           </TR>
                    <tr><td> <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtToDate" ControlToValidate="txtFromDate" ErrorMessage="To Date should be greater than From Date" ForeColor="#FF3300" Operator="LessThanEqual"></asp:CompareValidator>
						</td>
					</tr>
					<TR>
						<TD align="middle" colSpan="4">
							<asp:RadioButtonList id="rblQry" runat="server" Width="395px">
								<asp:ListItem Value="1" Selected="True">Mould Machining Details  Mis-Match</asp:ListItem>
								<asp:ListItem Value="2">Condemned Moulds Status Mis-Match</asp:ListItem>
								<asp:ListItem Value="3">Supplier wise mould consumption details</asp:ListItem>
								<asp:ListItem Value="4">Mould Consumption Summary</asp:ListItem>
								<asp:ListItem Value="6">DateWise Qry</asp:ListItem>
								<asp:ListItem Value="7">FirmWise Qry</asp:ListItem>
								<asp:ListItem Value="8">MouldConsumptionSummaryMonthWise</asp:ListItem>
								<asp:ListItem Value="9">MouldConsumptionTotalSummary</asp:ListItem>
								<asp:ListItem Value="10">Ingate Performance Details</asp:ListItem>
								<asp:ListItem Value="11">Ingate Performance Summary Firmwise</asp:ListItem>
								<asp:ListItem Value="21">Ingate Performance Summary Reasonwise</asp:ListItem>
								<asp:ListItem Value="12">Ingate Performance Below 26 WC Details </asp:ListItem>
								<asp:ListItem Value="13">CR XC Details</asp:ListItem>
								<asp:ListItem Value="14">FirmWise Mould Population</asp:ListItem>
								<asp:ListItem Value="15">ProductWise Mould Population</asp:ListItem>
								<asp:ListItem Value="16">Mould received from MR Semmary</asp:ListItem>
								<asp:ListItem Value="22">Mould received from MR Details</asp:ListItem>
								<asp:ListItem Value="17">Mould Issued to MR</asp:ListItem>
								<asp:ListItem Value="18">Mould Population</asp:ListItem>
								<asp:ListItem Value="19">Ingate XC Details</asp:ListItem>
								<asp:ListItem Value="20">Ingate Fitted Datewise</asp:ListItem>
								<asp:ListItem Value="23">Mould Machining Datewise</asp:ListItem>
								<asp:ListItem Value="24">Ingate Blanks</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="4">
							<asp:Button id="btnShow" runat="server" Text="Show Data in Grid" CssClass="button button2"></asp:Button></TD>
					</TR>
					<TR>
						<TD align="middle" colSpan="4">
							<asp:button id="btnExportDetails" runat="server" Text="Export To EXCEL" CssClass="button button2"></asp:button></TD>
					</TR>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:Panel>
		</form>
                    
                                            </div>
                </div>
            </div>
     <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>

	</body>
</html>
