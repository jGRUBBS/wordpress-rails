module Wordpress
  class CustomPost < BasePost

    EXCLUDED_TYPES = %w[
      attachment
      nav_menu_item
      page
      post
      revision
    ]

    default_scope { where( post_type: types ) }
    scope :type, lambda { |post_type| where( post_type: post_type ) }

    def self.types
      uniq.pluck(:post_type) - EXCLUDED_TYPES
    end

  end
end