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
     elsif option == 'note'
       note.blank? ? "#{option} is not indicated" : note
     else
      priority.blank? ? "#{option} is not indicated" : priority
     end
   end

   def isPriority?
    priority.nil? ? false : priority > 0
   end
end
