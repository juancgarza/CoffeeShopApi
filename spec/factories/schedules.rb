FactoryGirl.define do
  factory :schedule do
    monday true
    tuesday true
    wednesday true
    thursday true
    friday true
    saturday true
    sunday true
    from_hour "08:00"
    to_hour "19:00"
    coffeeshop

    factory :godin_schedule do
      saturday false
      sunday false
      from_hour "07:00"
      to_hour "17:00"
    end


  end
end
