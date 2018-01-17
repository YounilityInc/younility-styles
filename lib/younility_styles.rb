require 'bootstrap'
require 'younility_styles/version'

module YounilityStyles
  if defined? ::Rails::Engine
    require 'younility_styles/engine'
  elsif defined? Sprockets
    require 'younility_styles/sprockets'
  end
end
