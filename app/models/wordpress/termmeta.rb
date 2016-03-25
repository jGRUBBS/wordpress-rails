module Wordpress
  class Termmeta < ActiveRecord::Base

    self.table_name  = "wp_termmeta"
    self.primary_key = "meta_id"

  end
end
