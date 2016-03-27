class CreateMyMeetings < ActiveRecord::Migration
  def change
    create_table :my_meetings do |t|
      t.string :name

      t.string :string

      t.string :note

      t.string :string

      t.string :details

      t.string :string

      t.string :start_time
      t.string :datetime
      t.string :create_at

      t.string :datetime

      t.string :update_at

      t.string :datetime

      t.string :place

      t.string :string

      t.string :user_id

      t.string :integer

      t.timestamps null: false
    end
  end
end
