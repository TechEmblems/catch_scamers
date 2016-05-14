class Installment < ActiveRecord::Base
  belongs_to :purchase
end
