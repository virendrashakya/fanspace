class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :relationships
  has_many :influencers, through: :relationships

  # has_many :microposts, dependent: :destroy
  # has_many :active_relationships, class_name:  "Relationship",
  #                                 foreign_key: "follower_id",
  #                                 dependent:   :destroy
  
  # has_many :passive_relationships, class_name:  "Relationship",
  # foreign_key: "followed_id",
  # dependent:   :destroy


  # has_many :following, through: :relationships, source: :influencer

  # has_many :followers, through: :passive_relationships, source: :follower

  has_one :account

  # Follows a user.
  def follow_influencer(influencer)
    relationships.create(influencer_id: influencer.id)
  end

  # Unfollows a user.
  def unfollow_influencer(influencer)
    relationships.find_by(influencer_id: influencer.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following_influencer?(influencer)
    influencers.include?(influencer)
  end
end
