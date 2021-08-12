<%@ Control language="c#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Privacy" Src="~/Admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Breadcrumb" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Search" Src="~/Admin/Skins/search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="User" Src="~/Admin/Skins/user.ascx" %>

<!-- META -->
<dnn:META runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />


<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,700i&display=swap" rel="stylesheet">

<!-- CSS -->
<dnn:DnnCssInclude runat="server" FilePath="css/fonts/fontawesome/css/all.min.css" PathNameAlias="SkinPath" Priority="80" />
<dnn:DnnCssInclude runat="server" FilePath="css/fonts/glyphter/css/Glyphter.css" PathNameAlias="SkinPath" Priority="85" />
<dnn:DnnCssInclude runat="server" FilePath="css/skin.css" PathNameAlias="SkinPath" Priority="90" />


<!-- Javascript -->
<dnn:DnnJsInclude runat="server" FilePath="libraries/bootstrap/js/bootstrap.min.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/general.js" PathNameAlias="SkinPath"/>

<%
	int userId 			= UserController.GetCurrentUserInfo().UserID;
	int pageId 			= PortalSettings.ActiveTab.TabID;
	
	string logged 		= (Request.IsAuthenticated) ? "logged-in" : "logged-out";
	string admin 		= (UserController.GetCurrentUserInfo().IsInRole("Administrators")) ? "admin" : "";
	string host 		= (UserController.GetCurrentUserInfo().IsInRole("Host")) ? "host" : "";
	string bc 			= "bc-" + PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabID;
	string username 	= UserController.GetCurrentUserInfo().DisplayName;
	string pageName 	= PortalSettings.ActiveTab.TabName;
%>
