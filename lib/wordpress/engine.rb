require 'rails/engine'

module Wordpress
  class Engine < ::Rails::Engine
    isolate_namespace Wordpress
    engine_name 'wordpress'

    config.autoload_paths += [
      config.root.join('lib'),
      config.root.join('lib/middleware'),
      config.root.join('app/controllers/concerns'),
      config.root.join('app/models/concerns')
    ]

  end
end
