class ChangeGradeToInteger < ActiveRecord::Migration
  def up
    change_column :climbs, :grade, :integer
  end

  def down
    change_column :climbs, :grade, :string
  end
end
