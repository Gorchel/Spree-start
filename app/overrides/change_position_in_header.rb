Deface::Override.new(
	:virtual_path => 'spree/shared/_header',
	:name => 'change_position',
	:replace => "div#spree-header",
	:text => '<%= render :partial => "spree/shared/main_nav_bar" if store_menu? %>
				<div id="nav-back-container" class="container-fluid"></div>
				<header id="header" class="header-footer-background" data-hook>
				    <div class="container">
				      <div class="row">
				        <div id="logo" class="hidden-xs col-sm-3 col-md-2" data-hook>
				          <%= logo %>
				        </div>
				        <%= render :partial => "spree/shared/nav_bar" %>
				      </div>
				    </div>
			  	</header>'  	
	)
