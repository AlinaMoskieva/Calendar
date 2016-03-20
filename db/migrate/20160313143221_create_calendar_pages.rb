class CreateCalendarPages < ActiveRecord::Migration
  def change
    create_table :calendar_pages do |t|
      t.string :id_meeting
      t.string :integer

      t.timestamps null: false
    end
  end
end
