class AddRef < ActiveRecord::Migration
  def change
    remove_column :my_meetings, :user_id, :integer
    add_column :my_meetings, :user_id, :integer
    add_index :my_meetings, :user_id
  end
end
