class Influencer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_one :profile
  has_many :social_accounts

  has_many :relationships
  has_many :users, through: :relationships

  after_create :create_profile

  def followers
    
  end

  private

  def create_profile
    create_profile!
  end
end
