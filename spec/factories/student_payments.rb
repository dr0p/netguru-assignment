FactoryGirl.define do
  factory :student_payment do
    student
    payment_date { Faker::Date.between(1.years.ago, Date.today)}
  end
end
