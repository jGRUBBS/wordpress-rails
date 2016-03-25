module Wordpress
  class TermTaxonomy < ActiveRecord::Base

    self.table_name  = "wp_term_taxonomy"
    self.primary_key = "term_taxonomy_id"

    belongs_to :term, class_name: "Term"

    has_many :term_relationships, class_name: "TermRelationship"
    has_many :objects, class_name: "Post", through: :term_relationships

    def term_slug
      term.slug
    end
  end
end
