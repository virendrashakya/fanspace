class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :slug
      t.integer :mobile_number
      t.integer :dial_code
      t.string :country
      t.string :state
      t.string :city
      t.text :bio
      t.string :gender
      t.references :influencer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
