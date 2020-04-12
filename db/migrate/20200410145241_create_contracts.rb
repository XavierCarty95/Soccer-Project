class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.integer :length
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end
  end
end
