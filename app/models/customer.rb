class Customer < ActiveRecord::Base
  has_many :purchases
  validates :first_name, presence: true
  validates :cnic, uniqueness: true
  validates :cnic, length: { is: 13 }

  scope :cnic_like, -> (cnic) { where('cnic like ?', cnic) }
end
