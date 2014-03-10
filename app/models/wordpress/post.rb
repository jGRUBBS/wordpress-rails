module Wordpress
  class Post < BasePost

    has_many :images, foreign_key: "post_parent"

    default_scope { where( post_type: "post" ) }

  end
end
