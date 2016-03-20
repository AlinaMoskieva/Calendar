class AddUserIdRefToMyMeeting < ActiveRecord::Migration
  def change
    add_reference :my_meetings, :user, index: true, foreign_key: true
  end
end
