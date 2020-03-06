# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( jquery-3.3.1.min.js scripts.js jquery.themepunch.tools.min.js jquery.themepunch.revolution.min.js demo.revolution_slider.js  bootstrap.min.js owl.carousel.min.js jquery.magnific-popup.min.js jquery.mixitup.min.js custom.fle_upload.js)
Rails.application.config.assets.precompile += %w( bootstrap.min.css extralayers.css settings.css essentials.css layout.css header-1.css darkblue.css)

Rails.application.config.assets.precompile = ["manifest.js"]