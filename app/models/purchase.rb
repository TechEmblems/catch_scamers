class Purchase < ActiveRecord::Base
  belongs_to :customer
  has_many :installments

  attr_accessor :customer_cnic

  def next_installment_due_on
    30.days.from_now
  end
end
