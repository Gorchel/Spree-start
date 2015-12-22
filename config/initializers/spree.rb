# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
	config.admin_interface_logo = 'logo.png'
	config.logo = 'logo.png'

	country = Spree::Country.find_by_name('Russian Federation')

	Spree::Money.class_eval do
	  def to_s
	    @money.format.gsub(/,00/, "")
	  end

	  def to_html(options = { :html => true })
	   to_s
	  end
	end

  	Money::Currency.register({
	  :priority        => 1,
	  :iso_code        => "RUB",
	  :iso_numeric     => country.id,
	  :name            => "Russian Federation",
	  :symbol          => "р.",
	  :subunit         => "коп.",
	  :subunit_to_unit => 1,
	  :separator       => ".",
	  :delimiter       => ","
	})	
end

Spree.user_class = "Spree::LegacyUser"
