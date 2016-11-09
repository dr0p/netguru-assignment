class CreateStudentPayments < ActiveRecord::Migration
  def change
    create_table :student_payments do |t|
      t.references :student, index: true, foreign_key: true, null: false
      t.date :payment_date

      t.timestamps null: false
    end
  end
end
