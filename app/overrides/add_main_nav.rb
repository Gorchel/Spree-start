Deface::Override.new(
	:virtual_path => 'spree/shared/_main_nav_bar',
	:name => 'add_main_nav',
	:replace => "nav",
	:text => '<nav class="navbar navbar-fixed-top navbar-inverse container-fluid">
				<div class="container">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				    </div>

				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      	<ul class="nav navbar-nav">
					        <li><a href="/">Домой</a></li>
					        <li><a href="#">Доставка</a></li>
					        <li><a href="#">Обратная связь</a></li>
					        <li><a href="#">Контакты</a></li>
				     	</ul>
				      	<ul class="nav navbar-nav navbar-right" data-hook>
					      <li id="link-to-cart" data-hook>
					        <noscript>
					          <%= link_to Spree.t(:cart), "/cart" %>
					        </noscript>
					        &nbsp;
					      </li>
					      <script>Spree.fetch_cart()</script>
					    </ul>
				    </div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>'
)

