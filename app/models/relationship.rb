class Relationship < ApplicationRecord
  self.table_name = 'influencers_users'

  belongs_to :user
  belongs_to :influencer
  # belongs_to :influencer, class_name: "Influencer"
  # belongs_to :user, class_name: "User"

  # validates :user_id, presence: true
  # validates :influencer_id, presence: true

end
