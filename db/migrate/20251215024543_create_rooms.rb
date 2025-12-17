class CreateRooms < ActiveRecord::Migration[8.2]
  def change
    create_table :rooms, id: :uuid do |t|
      t.string :slug_name, null: false, index: { unique: true }
      t.integer :status, default: 0
      t.string :deck_type

      t.timestamps
    end
  end
end
