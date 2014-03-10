module Wordpress

  mattr_accessor :styles

  # used for setting up a config/initializer/wordpress.rb
  # Wordpress.setup do |config|
  #   config.styles = { :small => "s", :medium => "m" }
  # end
  def self.setup
    yield self
  end

end
