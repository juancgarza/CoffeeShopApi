class Schedule < ActiveRecord::Base
  belongs_to :coffeeshop

  validates_format_of :from_hour, with: /\A\d{2}:\d{2}\Z/i
  validates_format_of :to_hour, with: /\A\d{2}:\d{2}\Z/i
end
