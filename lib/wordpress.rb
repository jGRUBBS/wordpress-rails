require 'rails'
require 'wordpress/engine'
require 'php_serialize'

module Wordpress

  # used for setting up a config/initializer/wordpress.rb
  # Wordpress.setup do |config|
  #   ...
  # end
  def self.setup
    yield self
  end

end
