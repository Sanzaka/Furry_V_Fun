class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true
      t.string :content, null: false
      t.boolean :is_deleted, null: false, default: false
      t.timestamps
    end
  end
end
