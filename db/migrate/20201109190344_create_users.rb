class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.string :email
      t.string :pic
      t.text :bio
      t.integer :age
      t.string :hometown

      t.timestamps
    end
  end
end
