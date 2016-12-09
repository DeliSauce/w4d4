class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.boolean :bonus, default: false, null: false
      t.text :lyrics, null: false
      t.integer :album_id, null: false

      t.timestamps null: false
    end

    add_index :tracks, [:name, :album_id], unique: true
  end
end
