<!--#include file="inc/head.inc" -->

<div class="skin skin--full <%= logged %> <%= admin %> <%= bc %>" 
	id="page-<%= pageId %>" data-name="<%= pageName %>">
	
	<!--#include file="inc/header.inc" -->
    <div class="container">
    	<div class="row">
    		<div id="ContentPane" class="col" runat="server"></div>
    	</div>
    </div>
    <!--#include file="inc/footer.inc" -->
</div>