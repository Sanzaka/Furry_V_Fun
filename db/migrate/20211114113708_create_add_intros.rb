class CreateAddIntros < ActiveRecord::Migration[5.2]
  def change
    create_table :add_intros do |t|
      t.references :user, foreign_key: true
      t.references :streamer, foreign_key: {to_table: :users}
      t.string :content, null: false
      t.boolean :is_markdown, null: false
      t.timestamps
    end
  end
end
