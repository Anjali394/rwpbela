<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProdMaterialDumpRegister.aspx.vb" Inherits="WebApplication2.ProdMaterialDumpRegister" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>ProdMaterialDumpRegister</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR"/>
        <%--<a href="../packages.config">../packages.config</a>--%>
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
      
          <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
           <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
        <%--  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        --%>
       
         
         <link rel="Stylesheet" href="../StyleSheet1.css" />
         
      
	 
	</head>
	<body>
         <nav class="mb-1 navbar navbar-expand-sm bg-dark navbar-dark " >
   <a class="navbar-brand p-0" href="#"><img src="../../../NewFolder1/unnamed.png" class="rounded-circle z-depth-0"  height="45"/> </a>
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
          <img src="../../../NewFolder1/CRIS-Recruitment.jpg" class="rounded-circle z-depth-0"  height="45"/>
        </a>
      </li>
     </ul>
      
  </div>
</nav>
         <div class="container">
             
              <form id="Form1" method="post" runat="server">  
             <div class="row">
    
                  <h4>&nbsp&nbsp&nbspSelect Your Theme : &nbsp&nbsp&nbsp </h4>
            
                 <asp:DropDownList ID="Dd1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dd1_SelectedIndexChanged" CssClass="form-control ll" Width="400px" >
                     
                     <asp:ListItem>select</asp:ListItem>
                     <asp:ListItem>Theme1</asp:ListItem>
                     <asp:ListItem>Theme2</asp:ListItem>
                     <asp:ListItem>Theme3</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                </div>
                
		

			<asp:panel id="Panel1"  runat="server">
                 <div class ="row">
                <div class="table-responsive">
               <%-- style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px"--%>
				<table id="Table6" class="table">
                    <%--cellSpacing="1" cellPadding="1" width="300"--%>
					<tr>
						<td vAlign="top" align="center">
							<asp:label id="lblConsignee" runat="server"></asp:label>&nbsp; Material Dump 
							Register<hr class="prettyline" /></td>
						
					</tr></table>
					
							<table id="Table1"  class="table" >
                               <%-- border="1"--%>
								<tr>
									<td colspan="3">
										<asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
								</tr>
								<tr>
									<td>PLNumber</td>
									<td>:</td>
									<td>
										<asp:DropDownList id="ddlPLs" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList></td>
								</tr>
								<tr>
									<td colspan="3">
										<asp:Label id="lblPLDescr" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>DBR Date :&nbsp; From</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtFrom" runat="server" CssClass="form-control" ></asp:TextBox></td>
								</tr>
								<tr>
									<td>DBR Date :&nbsp; To</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtTo" runat="server" CssClass="form-control"></asp:TextBox></td>
								</tr>
								<tr>
									<td colspan="3">
										<asp:Button id="bntShow" runat="server" CssClass="button button2" Text="Show DBR Details On Grid"></asp:Button></td>
								</tr>

							
                                </table>
                    <table id ="table7" class="table">
                        <tr >
						<td  align="left">Following Grid For Editing Only :</td></tr>
						<tr>
								<asp:DataGrid id="DataGrid2" runat="server" CssClass="table">
                                   <%-- PageSize="3" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"--%>
								<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
								<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
								<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></tr>
					
				</table>
				
				<table id="Table4" class="table" >
                    </table>
                    <%--border="1"
					<TR>
						<TD  vAlign="top" align="left">
                          <%--  style="WIDTH: 331px"--%>
							<table id="Table5" class="table" >
                               <%--border="1"cellSpacing="1" cellPadding="1" width="300"--%>
								<tr>
									<td>FromHeat</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtFromHeat" runat="server" CssClass="form-control"></asp:TextBox></td>
									<td>ToHeat</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtToHeat" runat="server" CssClass="form-control"></asp:TextBox></td>
								</tr>
								<tr>
									<td>UsedQty</td>
									<td>:</td>
									<td>
										<asp:TextBox id="txtUsedQty" runat="server" CssClass="form-control"></asp:TextBox></td>
									<td>DBRNo</td>
									<td>:</td>
									<td>
										<asp:Label id="lblDBRNo" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>InspectedBy</td>
									<td>:</td>
									<td colspan="4">
										<asp:TextBox id="txtInspectedBy" runat="server" CssClass="form-control"></asp:TextBox></td>
								</tr>
								<tr>
									<td>Remarks</td>
									<td>:</td>
									<td colspan="4">
										<asp:TextBox id="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox></td>
								</tr>
								<tr>
									<td align="center" colspan="6">
										<asp:Button id="btnSave" CssClass="button button2" runat="server" Text="Save"></asp:Button>
										<asp:Label id="lblSl" runat="server"></asp:Label></td>
								</tr>
							 <tr>
						 
						<td vAlign="top" align="left">
							<asp:Label id="lblInspectedBy" runat="server"></asp:Label>&nbsp;</td>
					</tr>
				</table>
				<asp:DataGrid id="DataGrid1" runat="server" CssClass="table"  AutoGenerateColumns="False">
                    <%--BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" --%>
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<Columns>
						<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
						<asp:BoundColumn DataField="DumpNo" ReadOnly="True" HeaderText="DumpNo"></asp:BoundColumn>
						<asp:BoundColumn DataField="dbr_number" ReadOnly="True" HeaderText="dbr_number"></asp:BoundColumn>
						<asp:BoundColumn DataField="dbr_date" ReadOnly="True" HeaderText="dbr_date"></asp:BoundColumn>
						<asp:BoundColumn DataField="SupplierName" ReadOnly="True" HeaderText="SupplierName"></asp:BoundColumn>
						<asp:BoundColumn DataField="po_number" ReadOnly="True" HeaderText="po_number"></asp:BoundColumn>
						<asp:BoundColumn DataField="PODate" ReadOnly="True" HeaderText="PODate"></asp:BoundColumn>
						<asp:BoundColumn DataField="AccQty" ReadOnly="True" HeaderText="AccQty"></asp:BoundColumn>
						<asp:BoundColumn DataField="RejQty" ReadOnly="True" HeaderText="RejQty"></asp:BoundColumn>
						<asp:BoundColumn DataField="RejReasons" ReadOnly="True" HeaderText="RejReasons"></asp:BoundColumn>
						<asp:BoundColumn DataField="idn_number" ReadOnly="True" HeaderText="idn_number"></asp:BoundColumn>
						<asp:BoundColumn DataField="idn_date" ReadOnly="True" HeaderText="idn_date"></asp:BoundColumn>
					</Columns>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
				<table id="Table2" class="table" >
                   <%-- border="1"--%>
					<tr>
						<td   align="center" colspan="2">Following Grid For Observing Consumption Rate Only </td>
                        <%--style="background-color:pink; font-weight: bold;"--%>
					</tr>
					<tr>
						<td  align="left">
							<asp:DataGrid id="DataGrid3" CssClass="table" BackColor="#DEBA84" runat="server" >
                               <%-- BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"  CellPadding="3" CellSpacing="2"--%>
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#738A9C"></SelectedItemStyle>
								<ItemStyle ForeColor="#8C4510" BackColor="#FFF7E7"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#A55129"></HeaderStyle>
								<FooterStyle ForeColor="#8C4510" BackColor="#F7DFB5"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="#8C4510" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></td>
						<td align="left">
							<asp:DataGrid id="DataGrid4" CssClass="table" runat="server"  >
                               <%-- BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"--%>
								<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
								<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
								<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
								<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
							</asp:DataGrid></td>
					</tr>
				</table>
                      </div>
                    </div>
			</asp:panel></form>   </div>
            
              
          <div class="card-footer" style="text-align:right;"><h4>MAINTAINED BY CRIS</h4></div>
	</body>
</html>
