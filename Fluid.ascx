<!--#include file="inc/head.inc" -->

<div class="skin skin--full <%= logged %> <%= admin %> <%= bc %>" 
	id="page-<%= pageId %>" data-name="<%= pageName %>">
	
	<!--#include file="inc/header.inc" -->
    <div id="ContentPane" runat="server"></div>
    <!--#include file="inc/footer.inc" -->
</div>