class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :like
      t.integer :dislike
      t.text :content

      t.timestamps
    end
  end
end
