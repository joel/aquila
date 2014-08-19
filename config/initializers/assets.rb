# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( readable.js readable.css
                                cyborg.js cyborg.css
                                simplex.js simplex.css
                                flatly.js flatly.css
                                cosmo.js cosmo.css
                                jquery-mobile/css/themes/default/jquery.mobile.css
                                jquery-mobile/js/jquery.mobile.js )
