class CreateSocialAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :social_accounts do |t|
      t.string :social_email
      t.string :social_username
      t.integer :social_mobile
      t.string :social_url
      t.boolean :public_profile
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
