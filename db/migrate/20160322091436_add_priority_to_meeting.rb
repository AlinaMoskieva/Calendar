class AddPriorityToMeeting < ActiveRecord::Migration
  def change
    add_column :meetings, :priority, :integer
  end
end
