<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MaterialRequirementEdit.aspx.vb" Inherits="WebApplication2.MaterialRequirementEdit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD runat="server">
		<title>MaterialRequirementEdit</title>
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
         <link rel="stylesheet" href="../../StyleSheet1.css" />
	</HEAD>
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
        <a class="nav-link waves-effect waves-light" style="{color:white; }:hover{color:grey;}" href="../../logon.aspx">
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
<!--/.Navbar -->
   <div class="container">
		<form id="Form1" method="post" runat="server">

            <div class="row">
                <h4>Select Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" class="formcontrolll" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px">
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
            </div>
           
            <div class="row table-responsive">
			<asp:Panel id="Panel1" runat="server" >
                <TABLE id="Table1" class="table">
					<TR>
						<TD align="middle" colSpan="6"><hr class="prettyline" /></TD>
                        </TR>
                                </TABLE>
				<TABLE id="Table4" class="table">
					<TR>
						<TD><FONT size="5">Material Requirement for Annual Shut-down&nbsp;- Edit&nbsp;-
								<asp:label id="lblConsignee" runat="server"></asp:label></FONT></TD>
					</TR>
				</TABLE>
				<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label>
				<TABLE id="Table1" class="table">
					<TR>
						<TD>Pl Number</TD>
						<TD>:</TD>
						<TD>
							<asp:dropdownlist id="ddlPlNumber" runat="server" AutoPostBack="True" CssClass="form-control ll"></asp:dropdownlist></TD>
						<TD>Qty Req</TD>
						<TD>:</TD>
						<TD>
							<asp:textbox id="txtQty" runat="server" AutoPostBack="True" CssClass="form-control"></asp:textbox>
							<asp:label id="lblUnitName" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD>Pl Desc</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:label id="lblPlDesc" runat="server"></asp:label>&nbsp;</TD>
					</TR>
					<TR>
						<TD>RecoupType</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblRecoupType" runat="server"></asp:label>&nbsp;</TD>
						<TD>RecoupQty</TD>
						<TD>:</TD>
						<TD>
							<asp:label id="lblRecoupQty" runat="server"></asp:label>&nbsp;</TD>
					</TR>
					<TR>
						<TD>Year</TD>
						<TD>:</TD>
						<TD>
							<asp:textbox id="txtYear" runat="server" CssClass="form-control"></asp:textbox></TD>
						<TD>Equipepment</TD>
						<TD>:</TD>
						<TD>
							<asp:textbox id="txtEquip" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD colSpan="6">Stock in Store :
							<asp:Label id="lblStockInStore" runat="server"></asp:Label>
							<asp:label id="lblUnitName1" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD colSpan="6">PMS&nbsp; Data&nbsp; :</TD>
					</TR>
				</TABLE>
				<asp:datagrid id="dgPLOutstanding" runat="server" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical">
					<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
					<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
					<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
					<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
				</asp:datagrid>
				<TABLE id="Table3" class="table">
					<TR>
						<TD>Remarks</TD>
						<TD>:</TD>
						<TD colSpan="7">
							<asp:textbox id="txtRemarks" runat="server" CssClass="form-control"></asp:textbox></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="middle" colSpan="9">
							<asp:button id="btnSave" runat="server" Text="Save" CssClass="button button2"></asp:button>
							<asp:label id="lblDate" runat="server"></asp:label></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="left" colSpan="9">Saved&nbsp; Data for report :</TD>
					</TR>
				</TABLE>
				<asp:datagrid id="dgSavedData" runat="server" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" Font-Size="Smaller" CssClass="table">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:datagrid>
			</asp:panel>
		</div>
               </form> 
        </div>
      
        <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>

</HTML>
