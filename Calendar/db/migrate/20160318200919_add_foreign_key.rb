class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :my_meetings, :users
  end
end
