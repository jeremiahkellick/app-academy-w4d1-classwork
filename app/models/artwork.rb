class Artwork < ApplicationRecord
  validates :image_url, :title, presence: true
  validates :title, uniqueness: {
    scope: :artist_id,
    message: "can't have the same title"
  }

  belongs_to :artist, class_name: :User
  has_many :shares, class_name: :ArtworkShare
  has_many :shared_viewers, through: :shares, source: :viewer
  has_many :comments, dependent: :destroy
end
