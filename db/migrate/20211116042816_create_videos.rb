class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.references :streamer, foreign_key: {to_table: :users}
      t.string :video_url, null: false
      t.timestamps
    end
  end
end
