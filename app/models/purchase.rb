class Purchase < ActiveRecord::Base
  belongs_to :customer
  has_many :installments

  def next_installment_due_on
    30.days.from_now
  end
end
