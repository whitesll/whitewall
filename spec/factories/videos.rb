FactoryBot.define do

  factory :video do
    game
    title                 {"a"}
    url                   {"a"}
    date                  {"2020-09-30"}
    views                 {"88"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end