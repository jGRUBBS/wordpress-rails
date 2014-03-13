module Wordpress
  class Post < BasePost

    has_many   :images, foreign_key: "post_parent"
    belongs_to :author, class_name: "User", foreign_key: "post_author"

    default_scope { where( post_type: "post" ) }

  end
end
