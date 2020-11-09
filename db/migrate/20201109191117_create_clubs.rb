class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :pic
      t.text :description
      t.integer :req_likes

      t.timestamps
    end
  end
end
