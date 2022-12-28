class CreateJoinTableInfluencerUser < ActiveRecord::Migration[7.0]
  def change
    create_table :influencers_users do |t|
      t.integer :influencer_id
      t.integer :user_id

      t.timestamps
    end

    add_index :influencers_users, [:influencer_id, :user_id], unique: true
  end
end
