Public Class MouldNewReports3
    Inherits System.Web.UI.Page
    Protected WithEvents txtHeatNumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnShow As System.Web.UI.WebControls.Button
    Protected WithEvents rblType As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents rblReport As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents rblShift As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlMPO As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlReg As System.Web.UI.WebControls.Panel
    Protected WithEvents rblRep As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents btnReport As System.Web.UI.WebControls.Button
    Protected WithEvents txtHeat As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
    Protected WithEvents Dd1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtFrDt As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtToDt As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox7 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox8 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button4 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox9 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox10 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button5 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox11 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox12 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button6 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox13 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox14 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button7 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox15 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox16 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button8 As System.Web.UI.WebControls.Button
    Protected WithEvents Textbox17 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox18 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button9 As System.Web.UI.WebControls.Button
    Protected WithEvents Button10 As System.Web.UI.WebControls.Button
    Protected WithEvents Button11 As System.Web.UI.WebControls.Button
    Protected WithEvents Button12 As System.Web.UI.WebControls.Button
    Protected WithEvents Button13 As System.Web.UI.WebControls.Button
    Protected WithEvents Button14 As System.Web.UI.WebControls.Button
    Protected WithEvents Button15 As System.Web.UI.WebControls.Button
    Protected WithEvents Button16 As System.Web.UI.WebControls.Button
    Protected WithEvents Button17 As System.Web.UI.WebControls.Button
    Protected WithEvents btnDetails As System.Web.UI.WebControls.Button



    Shared themeValue As String
    Public Function DateTime(x As Date) As String
        DateTime = "Date(" & Year(x) & "," & Month(x) & "," & Day(x) & " 0,0,0)"
    End Function

    Public Sub New()

        AddHandler PreInit, New EventHandler(AddressOf Page_PreInit)
    End Sub

    Private Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)

        Page.Theme = themeValue
    End Sub


    Protected Sub Dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        themeValue = Dd1.SelectedItem.Value
        Response.Redirect(Request.Url.ToString())

    End Sub


    '#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        If IsPostBack = False Then

            Textbox1.Text = Now.Date
            Textbox2.Text = Now.Date


        End If
    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6800&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6121&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6149&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6114&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=8088&user0=crissqlserver&password0=cris-bela@1234567890" &
            "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=17396&user0=crissqlserver&password0=cris-bela@1234567890" &
          "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=17416&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=17432&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6135&user0=crissqlserver&password0=cris-bela@1234567890" &
        "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button10.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6142&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button11.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=8956&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button12.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=8949&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button13_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button13.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6170&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button14_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button14.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=17463&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button15_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button15.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6156&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button16_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button16.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6176&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub

    Private Sub Button17_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button17.Click
        Dim Done As Boolean
        lblMessage.Text = ""
        Try
            Textbox1.Text = CDate(Textbox1.Text)
            Textbox2.Text = CDate(Textbox2.Text)
        Catch exp As Exception
            lblMessage.Text = exp.Message
            Done = True
        End Try
        If CDate(Textbox1.Text) > Now.Date Then
            lblMessage.Text = "From Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) > Now.Date Then
            lblMessage.Text = "To Date cannot greater than Today!"
            Exit Sub
        End If
        If CDate(Textbox2.Text) < CDate(Textbox1.Text) Then
            lblMessage.Text = "To Date cannot be less than From Date !"
            Exit Sub
        End If

        If Not Done Then
            Dim strPathName As String

            strPathName = "http://rwpbela3.southindia.cloudapp.azure.com:8080/BOE/CMC/1903072256/CrystalReports/viewrpt.cwr?apsuser=Administrator&apspassword=Cris@123&1225&apsauthtype=secEnterprise&id=6107&user0=crissqlserver&password0=cris-bela@1234567890" &
     "&promptex0=DateTime(" & CDate(Textbox1.Text).Year & "," & CDate(Textbox1.Text).Month & ", " & CDate(Textbox1.Text).Day & ", 0,0,0)" &
            "&promptex1=DateTime(" & CDate(Textbox2.Text).Year & "," & CDate(Textbox2.Text).Month & "," & CDate(Textbox2.Text).Day & ", 0,0,0)"
            Response.Redirect(strPathName)
        End If

    End Sub







End Class
