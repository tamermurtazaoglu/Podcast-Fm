class Episode < ApplicationRecord
  belongs_to :podcast
  has_attached_file :episode_thumbnail, styles: { large: "1000x1000#", medium: "550x550#"} , validate_media_type: false
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\z/

  # validates_attachment :mp3, :content_type => { :content_type => ['audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio']}, :file_name => { :matches => [/\Aaudio\/.*\Z/] }


  has_attached_file :mp3, validate_media_type: false
  # Validate content type
  validates_attachment_content_type :mp3, :content_type => /\Aaudio/
  # Explicitly do not validate
  do_not_validate_attachment_file_type :mp3
end
