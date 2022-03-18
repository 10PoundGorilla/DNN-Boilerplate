<!--#include file="inc/head.inc" -->
<div class="skin" id="page-<%= pageId %>" data-name="<%= pageName %>" data-authenticated="<%= authenticated %>" data-admin="<%= admin %>">
	<!--#include file="inc/header.inc" -->
	<main>
		<div class="container">
			<div class="row">
				<div class="col">
					<div id="contentPane" class="contentPane" runat="server"></div>
				</div>
			</div>
		</div>
	</main>
	<!--#include file="inc/footer.inc" -->
</div>