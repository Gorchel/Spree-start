Deface::Override.new(
	:virtual_path => 'spree/shared/_nav_bar',
	:name => 'change_log_and_search',
	:replace => "nav#top-nav-bar",
	:text => '<nav class="navbar col-sm-9 col-md-10" id="top-nav-bar">
					<ul id="nav-bar" class="nav navbar-nav navbar-right" data-hook>
						<li id="search-bar" data-hook>
						  <%= render :partial => "spree/shared/search" %>
						</li>
					</ul>
				</nav>'  	
	)
