class StudentPaymentsController < ApplicationController
  expose(:student_payments) { StudentPayment.eager_load(:student) }
end
