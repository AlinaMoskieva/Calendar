class Meeting < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true

  def in_past?
    start_time < Date.today
  end

   def today?
     start_time >= Date.today and start_time < Date.tomorrow
   end

   def actual?
    start_time > Date.today
   end

   def indicated(option)
     if option == 'details'
       details.blank? ? "#{option} is not indicated" : details
     elsif option == 'place'
       place.blank? ? "#{option} is not indicated" : place
     else option == 'note'
       note.blank? ? "#{option} is not indicated" : note
     end
   end
end

