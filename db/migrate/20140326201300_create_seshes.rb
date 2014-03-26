class CreateSeshes < ActiveRecord::Migration
  def change
    create_table :seshes do |t|
      t.references :user
      t.string :location

      t.timestamps
    end
    add_index :seshes, :user_id
  end
end
