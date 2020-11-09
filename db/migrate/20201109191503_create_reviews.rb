class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :club, null: false, foreign_key: true
      t.integer :rating
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
