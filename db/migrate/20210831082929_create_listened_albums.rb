class CreateListenedAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :listened_albums do |t|
      t.belongs_to :profile, null: false, foreign_key: true
      t.integer :album_id

      t.timestamps
    end
  end
end
