require 'autoprefixer-rails'

module YounilityStyles

  # Add our assets to Rails using an engine
  class Engine < ::Rails::Engine
    initializer 'younility_styles.assets' do |app|
      %w(stylesheets javascripts fonts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end
