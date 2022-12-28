class Post < ApplicationRecord
  belongs_to :influencer

  has_many_attached :image

end
