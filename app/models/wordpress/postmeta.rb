module Wordpress
  class Postmeta < ActiveRecord::Base

    self.table_name  = "wp_postmeta"
    self.primary_key = "meta_id"

    alias_attribute :value, :meta_value

  end
end
