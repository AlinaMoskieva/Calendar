class Solving < ActiveRecord::Migration
  def change
    drop_table :my_meetings
  create_table :my_meetings do |t|
    t.string   :name
    t.datetime :start_time
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false
    t.string   :details
    t.string   :place
    t.string   :note
    t.integer  :user_id
  end
  end
end
