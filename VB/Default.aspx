<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="PassParameterToWebReport._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.4.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.XtraReports.v8.2.Web, Version=8.2.4.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" AutoPostBack="True" SelectedIndex="0"
            ValueType="System.String">
            <Items>
                <dxe:ListEditItem Text="Beverages" Value="0" />
                <dxe:ListEditItem Text="Condiments" Value="1" />
                <dxe:ListEditItem Text="Confections" Value="2" />
                <dxe:ListEditItem Text="Dairy Products" Value="3" />
                <dxe:ListEditItem Text="Grains/Cereals" Value="4" />
                <dxe:ListEditItem Text="Meat/Poultry" Value="5" />
                <dxe:ListEditItem Text="Produce" Value="6" />
                <dxe:ListEditItem Text="Seafood" Value="7" />
            </Items>
        </dxe:ASPxComboBox>
    
    </div>
        <br />
        <dxxr:ReportToolbar ID="ReportToolbar1" runat="server" ReportViewer="<%# ReportViewer1 %>"
            ShowDefaultButtons="False">
            <Items>
                <dxxr:ReportToolbarButton ItemKind="Search" ToolTip="Display the search window" />
                <dxxr:ReportToolbarSeparator />
                <dxxr:ReportToolbarButton ItemKind="PrintReport" ToolTip="Print the report" />
                <dxxr:ReportToolbarButton ItemKind="PrintPage" ToolTip="Print the current page" />
                <dxxr:ReportToolbarSeparator />
                <dxxr:ReportToolbarButton Enabled="False" ItemKind="FirstPage" ToolTip="First Page" />
                <dxxr:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" ToolTip="Previous Page" />
                <dxxr:ReportToolbarLabel Text="Page" />
                <dxxr:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
                </dxxr:ReportToolbarComboBox>
                <dxxr:ReportToolbarLabel Text="of" />
                <dxxr:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
                <dxxr:ReportToolbarButton ItemKind="NextPage" ToolTip="Next Page" />
                <dxxr:ReportToolbarButton ItemKind="LastPage" ToolTip="Last Page" />
                <dxxr:ReportToolbarSeparator />
                <dxxr:ReportToolbarButton ItemKind="SaveToDisk" ToolTip="Export a report and save it to the disk" />
                <dxxr:ReportToolbarButton ItemKind="SaveToWindow" ToolTip="Export a report and show it in a new window" />
                <dxxr:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
                    <Elements>
                        <dxxr:ListElement Text="Pdf" Value="pdf" />
                        <dxxr:ListElement Text="Xls" Value="xls" />
                        <dxxr:ListElement Text="Rtf" Value="rtf" />
                        <dxxr:ListElement Text="Mht" Value="mht" />
                        <dxxr:ListElement Text="Text" Value="txt" />
                        <dxxr:ListElement Text="Csv" Value="csv" />
                        <dxxr:ListElement Text="Image" Value="png" />
                    </Elements>
                </dxxr:ReportToolbarComboBox>
            </Items>
            <Styles>
                <LabelStyle>
                    <Margins MarginLeft="3px" MarginRight="3px" />
                </LabelStyle>
            </Styles>
        </dxxr:ReportToolbar>
        <br />
        <br />
        <dxxr:ReportViewer ID="ReportViewer1" runat="server">
        </dxxr:ReportViewer>
    </form>
</body>
</html>
