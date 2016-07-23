FactoryGirl.define do
  factory :coffee_shop do
    name { FFaker::Company.name }
    latitude 134223.54
    longitude 109235.56
    cp { FFaker::AddressMX.zip_code }
    state { FFaker::AddressMX.state }
    city { FFaker::AddressMX.municipality }
    address { FFaker::Address.street_address }
    rating_value { rand(1..5) }

    factory :coffee_monterrey do
      cp "64000"
      state "Nuevo Leon"
      city "Monterrey"
    end

    factory :coffee_gpe do
      cp "67150"
      city "Guadalupe"
    end

    factory :coffee_sp do
      cp "64200"
      city "San Pedro"
    end

    factory :coffee_santa do
      cp "68000"
      city "Santa Catarina"
    end
  end
end
