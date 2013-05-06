

# Change Compass configuration
compass_config do |config|
  # routes for stylesheets directories at build mode
  config.sass_options = {
    :output_style => :nested,
    :images_dir => 'assets/images',
    :fonts_dir => 'assets/fonts'
  }
end


# Default encoding

set :default_encoding, 'utf-8'

Encoding.default_external = 'utf-8' if Object.const_defined?(:Encoding)

# For physical directories at development mode
set :images_dir,  "assets/images"
set :fonts_dir,  "assets/fonts"
set :css_dir,  "assets/stylesheets"
set :js_dir, "assets/javascripts"


# For physical directories at development mode
set :markdown, :layout_engine => :haml


# Build-specific configuration
configure :build do
  activate :compass

  activate :minify_css
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

  # Enable cache buster
  # activate :cache_buster

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "./"
end



###
# Haml
###

## Haml to output unindented text

# CodeRay syntax highlighting in Haml
# First: gem install haml-coderay
# require 'haml-coderay'

# CoffeeScript filters in Haml
# First: gem install coffee-filter
# require 'coffee-filter'

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes




###
# Page command
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
# page "resource/source/templates/*", :layout => "/templates"
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end




###
# Helpers
###

# Methods defined in the helpers block are available in templates

# helpers do
#
#   def template(t)
#     partial "resource/source/partials/#{t}"
#   end
#
#   def list_divider(s)
#     content_tag "li", :class => "list-divider" do
#       "#{s}"
#     end
#   end
#
# end
