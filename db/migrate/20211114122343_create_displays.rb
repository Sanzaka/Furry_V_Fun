class CreateDisplays < ActiveRecord::Migration[5.2]
  def change
    create_table :displays do |t|
      t.references :streamer_id, foreign_key: {to_table: :users}
      t.boolean :denote_add_intro, null: false, default: true
      t.boolean :denote_comment, null: false, default: true
      t.timestamps
    end
  end
end
