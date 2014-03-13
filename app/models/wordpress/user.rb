module Wordpress
  class User < ActiveRecord::Base

    self.table_name  = "wp_users"
    self.primary_key = "ID"

    has_many :posts, foreign_key: "post_author"

  end
end
