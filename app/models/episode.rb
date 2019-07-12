class Episode < ApplicationRecord
  belongs_to :podcast
  has_attached_file :episode_thumbnail, styles: { large: "1000x1000#", medium: "550x550#"} , validate_media_type: false
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\z/
end
