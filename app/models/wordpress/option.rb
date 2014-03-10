module Wordpress
  class Option < ActiveRecord::Base

    self.table_name  = "wp_options"
    self.primary_key = "option_id"

    alias_attribute :value, :option_value

  end
end
