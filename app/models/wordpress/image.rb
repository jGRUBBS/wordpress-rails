module Wordpress
  class Image < BasePost

    default_scope { where(
      post_type: "attachment",
      post_mime_type: ["image/jpeg", "image/png", "image/gif"]
    ) }

    def asset(style = :original)
      image_path.gsub("_n.","_#{WordpressRails.styles[style]}.")
    end

    def image_path
      "/#{guid.split("/")[3..-1].join("/")}"
    end

  end
end
