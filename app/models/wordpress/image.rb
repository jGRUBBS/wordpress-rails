module Wordpress
  class Image < BasePost

    belongs_to :post, foreign_key: "post_parent"

    default_scope { includes(:postmetas).where(
      post_type: "attachment",
      post_mime_type: ["image/jpeg", "image/png", "image/gif"]
    ) }

    def asset(style = nil)
      style.nil? ? image_path : File.join(File.dirname(image_path), styles[style]["file"])
    end

    def image_path
      URI(guid).path
    end

    def styles
      PHP.unserialize(attachment_data)["sizes"].symbolize_keys!
    end

    def attachment_data
      postmetas.find_by_meta_key("_wp_attachment_metadata").value
    end

  end
end
