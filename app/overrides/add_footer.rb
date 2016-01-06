Deface::Override.new(
	:virtual_path => 'spree/layouts/spree_application',
	:name => 'footer',
	:insert_bottom => "body",
	:text => '<footer id="footer" class="container-fluid header-footer-background">
					<div class="container-fluid">
					    <div class="row">
					        <div id="footer-pay" class="col-xs-12 col-sm-6 col-md-6 col-lg-6"></div>
					        <div id="footer-social"class="col-xs-12 col-sm-6 col-md-6 col-lg-6"></div>
					    </div>
				    </div>
				</footer>'  	
	)