module Wordpress
  class TermRelationship < ActiveRecord::Base

    self.table_name  = "wp_term_relationships"
    self.primary_key = "object_id"

    belongs_to :term_taxonomy, class_name: "TermTaxonomy"
    belongs_to :object, class_name: "Post"

  end
end
