class CreateGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :gigs do |t|
      t.belongs_to :club, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
