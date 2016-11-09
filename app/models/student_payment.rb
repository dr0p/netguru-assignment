class StudentPayment < ActiveRecord::Base
  belongs_to :student

  validates_presence_of :payment_date
end
