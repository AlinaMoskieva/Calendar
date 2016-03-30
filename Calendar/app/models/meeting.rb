class Meeting < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true

  def in_past?
    start_time < Date.today
  end

  def today?
    start_time.between?(Date.today, Date.tomorrow)
  end

  def actual?
    start_time > Date.today
  end

  def indicated(option)
    case
    when option == 'details'
      details.blank? ? "#{option} is not indicated" : details
    when option == 'place'
      place.blank? ? "#{option} is not indicated" : place
    when  option == 'note'
      note.blank? ? "#{option} is not indicated" : note
    else
      priority.blank? ? "#{option} is not indicated" : priority
    end
  end

  def isPriority?
    priority.nil? ? false : priority > 0
  end
end

