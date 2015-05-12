# UIKit Compass/SASS configuration.
# NOTE: grunt will take its compass options from this file.

# Required
# -----------------------------------------------------------------------------
require 'compass'
require 'modular-scale'
require 'susy'


# Directory paths
# -----------------------------------------------------------------------------

sass_dir = 'components'
css_dir = '../css/components'
images_dir = '../css/images'


# Add the layouts assets directory, we can import base and any susy-panel for
# use in the UIKit. Change this if you are using a different layout plugin.
# -----------------------------------------------------------------------------
add_import_path '../../layout/site-builder/sass'


# Precision
# -----------------------------------------------------------------------------
Sass::Script::Number.precision = 5


# Output Style
# -----------------------------------------------------------------------------
# You can select your preferred output style here (:expanded, :nested, :compact
# or :compressed). :expanded is closest to Drupal coding standards and it is
# not necessary to compress in the preprocessor since Drupal will do this for
# us using its own aggregation and compression systems.
output_style = :expanded


# Assets
# -----------------------------------------------------------------------------
relative_assets = true


# Line Comments
# -----------------------------------------------------------------------------
line_comments = false


# Sourcemaps
# -----------------------------------------------------------------------------
sourcemap = true


# Autoprefixer
# -----------------------------------------------------------------------------
# Post process for autoprefixer: https://github.com/postcss/autoprefixer#compass
# I have not been able to figure out how to autoprefix with sourcemaps using the gem,
# instead I suggest using grunt, which works just fine. The inlining does work, but
# no browser I tried could actually read it, patches and or advice welcome.
# require "autoprefixer-rails"
# on_stylesheet_saved do |file|
# css = File.read(file)
# File.open(file, 'w') do |io|
#   io << AutoprefixerRails.process(css)
# end
# end
