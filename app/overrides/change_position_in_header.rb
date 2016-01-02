Deface::Override.new(
	:virtual_path => 'spree/shared/_header',
	:name => 'change_position',
	:replace => "div#spree-header",
	:text => '<%= render :partial => "spree/shared/main_nav_bar" if store_menu? %>
				<div id="nav-back-container" class="container-fluid"></div>
				<header id="header" data-hook>
				    <div class="container">
				      <div class="row">
				        <figure id="logo" class="col-md-4" data-hook>
				          <%= logo %>
				        </figure>
				        <%= render :partial => "spree/shared/nav_bar" %>
				      </div>
				    </div>
			  	</header>'  	
	)
