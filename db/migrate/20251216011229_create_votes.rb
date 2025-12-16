class CreateVotes < ActiveRecord::Migration[8.2]
  def change
    create_table :votes do |t|
      t.string :value
      t.references :player, null: false, foreign_key: true
      t.integer :round_id

      t.timestamps
    end
  end
end
