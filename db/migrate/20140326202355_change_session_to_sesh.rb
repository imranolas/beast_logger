class ChangeSessionToSesh < ActiveRecord::Migration
  def change
    rename_column :climbs, :session_id, :sesh_id
  end
end
