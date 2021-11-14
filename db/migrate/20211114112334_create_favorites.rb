class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :response, foreign_key: true
      t.references :add_intro, foreign_key: true
      t.timestamps
    end
  end
end
