class CreateClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.string :grade
      t.integer :difficulty
      t.integer :steepness
      t.string :state

      t.timestamps
    end
  end
end
