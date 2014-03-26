class ChangeGradeToInteger < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE climbs ALTER grade TYPE integer USING grade::int;'
  end

  def down
    # change_column :climbs, :grade, :string
  end
end
