class RemoveUserIdFromMyMeetings < ActiveRecord::Migration
  def change
    remove_column :my_meetings, :user_id, :integer
  end
end
