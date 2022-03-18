<%@ Control language="c#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Privacy" Src="~/Admin/Skins/privacy.ascx" %>            
<%@ Register TagPrefix="dnn" TagName="Search" Src="~/Admin/Skins/search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="User" Src="~/Admin/Skins/user.ascx" %>

<!-- Meta -->
<dnn:META runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0"/>

<!-- Stylesheets -->
<dnn:DnnCssInclude runat="server" FilePath="css/skin.css" PathNameAlias="SkinPath" Priority="90" />

<!-- JS -->
<dnn:DnnJsInclude runat="server" FilePath="libraries/bootstrap/js/bootstrap.bundle.min.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/general.js" PathNameAlias="SkinPath"/>

<%
	int userId 			= UserController.GetCurrentUserInfo().UserID;
	int pageId 			= PortalSettings.ActiveTab.TabID;
	string authenticated 		= (Request.IsAuthenticated) ? "true" : "false";
	string admin 		= (UserController.GetCurrentUserInfo().IsInRole("Administrators")) ? "true" : "false";
	string pageName 	= PortalSettings.ActiveTab.TabName;
%>