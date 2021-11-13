class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :post_user, foreign_key: {to_table: :users}
      t.string :comment, null: false
      t.boolean :is_deleted, null: false, default: false
      t.timestamps
    end
  end
end
