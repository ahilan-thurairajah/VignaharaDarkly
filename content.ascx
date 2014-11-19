<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:META ID="META0" runat="server" Name="viewport" Content="width=device-width, initial-scale=1, maximum-scale=1" />

<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="bootstrap/js/bootstrap.min.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnJsInclude ID="customJS" runat="server" FilePath="js/skin.min.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnJsInclude ID="googlePlus" runat="server" FilePath="https://apis.google.com/js/plusone.js" PathNameAlias="" AddTag="false" />
<dnn:DnnJsInclude ID="linkedIN" runat="server" FilePath="js/LinkedIn.min.js" PathNameAlias="SkinPath" AddTag="false" />

<!-- Wrap all page content here -->
  <div id="wrap">
  
      <!-- Fixed navbar -->
      <div class="navbar navbar-inverse navbar-fixed topMenu">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand">
                <dnn:LOGO runat="server" id="dnnLOGO"></dnn:LOGO>
                <span id="link-brand"><%= Server.HtmlEncode(PortalSettings.PortalName)%></span>
            </div>
          </div>
          <!-- <div class="collapse navbar-collapse"> -->
          <div id="navbarCollapse" class="collapse navbar-collapse">  
              <ul class="nav navbar-nav navbar-right">    
                 <li id="liSearch"><span class="searchBox"><dnn:Search id="dnnSearch" runat="server" showsite="false" showweb="false" Submit="&lt;span class='glyphicon glyphicon-search'&gt;&lt;/span&gt;"  /></span></li>
              </ul>
              <dnn:MENU ID="bootstrapNav" MenuStyle="Superfish" runat="server"></dnn:MENU>
          </div>
          <!--/.nav-collapse -->
        </div>
      </div>
  
      <!-- Begin page content -->
      <div id="ContentPane" runat="server" class="container">
          
      </div>

    <div id="pageEnd">
        <dnn:copyright ID="dnnCopyright" runat="server" />&nbsp;|&nbsp;
        <dnn:terms id="dnnTerms" runat="server" />&nbsp;|&nbsp;
        <dnn:privacy id="dnnPrivacy" runat="server" />
    </div>

    </div>

    <div id="footer" class="container-fluid navbar-fixed-bottom">
        <div class="row visible-xs-block visible-sm-block visible-md-block visible-lg-block">
              <div id="footerLeft" class="col-md-6 pull-left">
                   <span id="publisherLinks">
                        <a id="linkPublisherLogo" href="http://www.vignahara.com"><img alt="PublisherLogo" src="http://www.vignahara.com/images/VignaharaLogo_ImageOnly_50x50.png" /></a>
                   </span> 
                   <span id="loginControls">
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="True" CssClass="btn btn-primary btn-xs footerBtn" />&nbsp;|&nbsp;
                        <dnn:LOGIN ID="dnnLogin" runat="server" LegacyMode="True" CssClass="btn btn-primary btn-xs footerBtn" /> 
                    </span>
                </div>

                <div id="footerRight" class="col-md-6 pull-right hidden-xs">
                    <div class="fb-share-button" data-href="" data-layout="button"></div>
                    <g:plus action="share" annotation="none"></g:plus>
                    <a href="https://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a>
                    <script type="IN/Share"></script>
                    <a  id="pinterestShare" data-pin-do="buttonPin" data-pin-config="none" target="pinterestShare" 
                        href="http://www.pinterest.com">
                        <img style="top: -7px; position: relative ;" src="images/pin_it_button.png" /></a>
                </div>
        </div>
    </div>

    





