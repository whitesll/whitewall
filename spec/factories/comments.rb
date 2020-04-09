FactoryBot.define do
  factory :comment do
    comment {Faker::Lorem.sentence}
    image {File.open("#{Rails.root}/spec/factories/sample.png")}
    user
    post
  end
end