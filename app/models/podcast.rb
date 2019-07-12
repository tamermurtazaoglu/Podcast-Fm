class Podcast < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :episodes
  has_attached_file :thumbnail, styles: { large: "1000x1000#", medium: "550x550#"} , validate_media_type: false
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/


end
