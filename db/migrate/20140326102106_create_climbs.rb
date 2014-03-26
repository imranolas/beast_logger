class CreateClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.string :grade
      t.references :session
      t.integer :difficulty
      t.integer :steepness
      t.string :state

      t.timestamps
    end
    add_index :climbs, :session_id
  end
end
