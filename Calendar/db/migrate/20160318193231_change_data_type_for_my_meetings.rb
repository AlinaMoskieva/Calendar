class ChangeDataTypeForMyMeetings < ActiveRecord::Migration
  def change
    change_column :my_meetings, :user_id, :integer
  end
end
