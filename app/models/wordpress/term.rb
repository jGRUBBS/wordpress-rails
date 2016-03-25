module Wordpress
  class Term < ActiveRecord::Base

    self.table_name  = "wp_terms"
    self.primary_key = "term_id"

    has_many :term_taxonomies, class_name: "TermTaxonomy"

  end
end
