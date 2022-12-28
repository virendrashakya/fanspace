class CreateSocialAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :social_accounts do |t|
      t.string :service_name
      t.string :username
      t.string :public_url
      t.string :icon
      t.references :influencer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
