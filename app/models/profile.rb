class Profile < ApplicationRecord
  belongs_to :influencer
  
  has_one_attached :avatar
  has_one_attached :banner
  
end
