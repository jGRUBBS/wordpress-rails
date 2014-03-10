module Wordpress
  class BasePost < ActiveRecord::Base

    self.table_name  = "wp_posts"
    self.primary_key = "ID"

    scope :published, -> { where( post_status: "publish", post_type: "post" ).order( "post_date DESC" ) }
    scope :latest, lambda { |how_many| published.order( "post_date DESC" ).limit( how_many ) }

    alias_attribute :content, :post_content
    alias_attribute :title, :post_title

    def published?
      post_status == "publish"
    end

    def clean_content
      content.gsub(/\[\/?[^>]*\]/, "")
    end

  end
end
