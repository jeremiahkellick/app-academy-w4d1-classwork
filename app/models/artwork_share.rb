class ArtworkShare < ApplicationRecord
  validates :artwork_id, uniqueness: {
    scope: :viewer_id,
    message: "can't be shared more than once"
  }

  belongs_to :artwork, class_name: :Artwork
  belongs_to :viewer, class_name: :User
end
