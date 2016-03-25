module Wordpress
  class Post < BasePost

    self.table_name  = "wp_posts"
    self.primary_key = "ID"

    has_many   :images, foreign_key: "post_parent"
    belongs_to :author, class_name: "User", foreign_key: "post_author"

    has_many :term_relationships, class_name: "TermRelationship", foreign_key: :object_id
    has_many :term_taxonomies, through: :term_relationships

    scope :published, -> { where(post_status: 'publish') }
    #default_scope { where( post_type: "post" ) }

  end
end
