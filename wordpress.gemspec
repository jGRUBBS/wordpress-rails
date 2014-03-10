$:.push File.expand_path("../lib", __FILE__)
require "wordpress"
require "wordpress/version"

Gem::Specification.new do |s|

  s.name        = %q{wordpress-rails}
  s.version     = Wordpress::VERSION

  s.authors     = ["Justin Grubbs"]
  s.summary     = %q{Use Ruby on Rails for the front-end of your Wordpress installation.}
  s.description = %q{Use Ruby on Rails for the front-end of your Wordpress installation.}
  s.email       = %q{justin@jgrubbs.net}
  s.homepage    = %q{http://github.com/jGRUBBS/wordpress-rails}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

end
