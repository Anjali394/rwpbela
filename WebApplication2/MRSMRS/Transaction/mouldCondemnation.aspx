<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mouldCondemnation.aspx.vb" Inherits="WebApplication2.mouldCondemnation" Culture="en-GB" uiCulture="en-GB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 transitional//EN">
<html>
	<head runat="server">
		<title>mouldCondemnation</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />

         <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../StyleSheet1.css" />
	</head>


	<body >
       <%-- <add nav--%>

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
        <script>

    function isInputNumber(evt) {

                    var ch = String.fromCharCode(evt.which);
        if (!(/[0-9]/.test(ch)))
        {
        evt.preventDefault();
    }

            }
            function isNumber1(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                      if (
                           (charCode != 45 ) && (charCode != 47 ) &&     // 
                           (charCode < 48 || charCode > 57))
                      return false;

                  return true;
            } 
             </script>
         <div class="container ">

		<form id="Form1" method="post" runat="server">
            
             <div class="row">
    
                  <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
      </div>

			<asp:Panel id="Panel1"  runat="server"><%--style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>

                <div class="row">
                <div class="table-responsive">
				<table id="Table1" class="table"><%--style="WIDTH: 526px; HEIGHT: 151px" cellSpacing="1" cellPadding="1" width="526" border="1"--%>
					<tr>
						<td colspan="6"><FONT size="5">Mould Condemnation ( after machining )</FONT>
                            <hr class="prettyline" />
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
					</tr>
					<tr>
						<td >Date</td>
						<td>:</td>
						<td>
							<asp:textbox id="txtdate" runat="server" AutoPostBack="true" CssClass="form-control" onkeypress="return isNumber1(event,this)" MaxLength="10"></asp:textbox></td>
						<td >Shift</td>
						<td >:</td>
						<td>
							<asp:radiobuttonlist id="rblShift" runat="server"  Repeatdirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
								<asp:ListItem Value="A" Selected="true">A</asp:ListItem>
								<asp:ListItem Value="B">B</asp:ListItem>
								<asp:ListItem Value="C">C</asp:ListItem>
							</asp:radiobuttonlist></td>
					</tr>
					<tr>
						<td>MouldNumber <span class="glyphicon-asterisk"></span></td>
						<td>:</td>
						<td>
							<asp:textbox id="txtMouldNumber" runat="server" AutoPostBack="true" CssClass="form-control" ToolTip="Enter only numeric value" onkeypress="isInputNumber(event)"></asp:textbox>
							<asp:requiredfieldvalidator id="rfvMldNo" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtMouldNumber"></asp:requiredfieldvalidator></td>
						<td >Operator</td>
						<td >:</td>
						<td>
							<asp:label id="lblOperator" runat="server"></asp:label>&nbsp;</td>
					</tr>
					<tr>
						<td >MouldType</td>
						<td>:</td>
						<td >
							<asp:label id="lblMouldType" runat="server"></asp:label>&nbsp;</td>
						<td >MouldStatus</td>
						<td >:</td>
						<td>
							<asp:label id="lblMouldStatus" runat="server"></asp:label>&nbsp;</td>
					</tr>
					<tr>
						<td >InitialHt</td>
						<td>:</td>
						<td >
							<asp:label id="lblInitialHt" runat="server"></asp:label>&nbsp;</td>
						<td >FinalHt</td>
						<td >:</td>
						<td>
							<asp:label id="lblFinalHt" runat="server"></asp:label>&nbsp;</td>
					</tr>
					<tr>
						<td >Remarks</td>
						<td>:</td>
						<td colspan="4">
							<asp:textbox id="txtremarks" runat="server" CssClass="form-control" MaxLength="200"></asp:textbox></td>
					</tr>
					<tr>
						<td vAlign="top" align="middle" colspan="6">
							<asp:button id="btnSave" runat="server" Text="Condemn the Mould" CssClass="button button2"></asp:button></td>
					</tr>
				</table>
                    
				<asp:DataGrid id="DataGrid1" runat="server"  BackColor="White" CssClass="table"><%--BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"--%>
					<SelectedItemStyle Font-Bold="true" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="true" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
                       
                    </div></div>
			</asp:Panel>
		</form></div>
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
