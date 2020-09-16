<!--#include file="inc/head.inc" -->

<div class="skin skin--fluid <%= logged %> <%= admin %> <%= bc %>" 
	id="page-<%= pageId %>" data-name="<%= pageName %>">

	<!--#include file="inc/header.inc" -->

	<div class="container">
		<div class="row">
			<div class="col">
				<div id="contentPane" class="contentPane" runat="server"></div>
			</div>
		</div>

		<!--#include file="inc/footer.inc" -->
		
	</div>
</div>