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


		<div class="row / m-t-30">
			<div class="col-md-4">

				<div class="card">
					<div class="card-header / strong text-color-primary">
						Content Examples
					</div>
					<ul class="list-group list-group-flush / ml-0">
						<li class="list-group-item" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">Typography</li>
						<li class="list-group-item" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">Alerts</li>
						<li class="list-group-item" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3">Buttons</li>
						<li class="list-group-item"type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">Pagination</li>
					</ul>
				</div>




			</div>
			<div class="col-md-8">

				<div class="accordion" id="accordionExample">
					
					<div class="card">
						<div class="card-header" id="accordionExample_item-1">
							<h2 class="mb-0">
								<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
									Typography
								</button>
							</h2>
						</div>

						<div id="collapse1" class="collapse show" aria-labelledby="ccordionExample_item-1" data-parent="#accordionExample">
							<div class="card-body">
								
								<h1>Heading 1 Example</h1>
								<h2>Heading 1 Example</h2>
								<h3>Heading 1 Example</h3>
								<h4>Heading 1 Example</h4>
								<h5>Heading 1 Example</h5>
								<h6>Heading 1 Example</h6>
								<p>Heading 1 Example</p>


							</div>
						</div>
					</div>


					<div class="card">
						<div class="card-header" id="accordionExample_item-2">
							<h2 class="mb-0">
								<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
									Alerts
								</button>
							</h2>
						</div>

						<div id="collapse2" class="collapse" aria-labelledby="ccordionExample_item-2" data-parent="#accordionExample">
							<div class="card-body">
								<p>
									Code examples come from the Bootstrap documentation. Learn
									more and find other examples on their website.
								</p>

								<div class="alert alert-primary" role="alert">
									A simple primary alert—check it out!
								</div>
								<div class="alert alert-secondary" role="alert">
									A simple secondary alert—check it out!
								</div>
								<div class="alert alert-success" role="alert">
									A simple success alert—check it out!
								</div>
								<div class="alert alert-danger" role="alert">
									A simple danger alert—check it out!
								</div>
								<div class="alert alert-warning" role="alert">
									A simple warning alert—check it out!
								</div>
								<div class="alert alert-info" role="alert">
									A simple info alert—check it out!
								</div>
								<div class="alert alert-light" role="alert">
									A simple light alert—check it out!
								</div>
								<div class="alert alert-dark" role="alert">
									A simple dark alert—check it out!
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-header" id="accordionExample_item-3">
							<h2 class="mb-0">
								<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse2">
									Buttons
								</button>
							</h2>
						</div>

						<div id="collapse3" class="collapse" aria-labelledby="ccordionExample_item-3" data-parent="#accordionExample">
							<div class="card-body">
								<p>
									Code examples come from the Bootstrap documentation. Learn
									more and find other examples on their website.
								</p>

								<button type="button" class="btn btn-primary">Primary</button>
								<button type="button" class="btn btn-secondary">Secondary</button>
								<button type="button" class="btn btn-success">Success</button>
								<button type="button" class="btn btn-danger">Danger</button>
								<button type="button" class="btn btn-warning">Warning</button>
								<button type="button" class="btn btn-info">Info</button>
								<button type="button" class="btn btn-light">Light</button>
								<button type="button" class="btn btn-dark">Dark</button>
								<button type="button" class="btn btn-link">Link</button>
								
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-header" id="accordionExample_item-4">
							<h2 class="mb-0">
								<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
									Pagination
								</button>
							</h2>
						</div>

						<div id="collapse4" class="collapse" aria-labelledby="ccordionExample_item-4" data-parent="#accordionExample">
							<div class="card-body">
								<p>
									Code examples come from the Bootstrap documentation. Learn
									more and find other examples on their website.
								</p>
								
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item">
											<a class="page-link" href="#">Previous</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">1</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">2</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">3</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">Next</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>
		
		<!--#include file="inc/footer.inc" -->

	</div>
</div>