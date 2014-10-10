class Sale < ActiveRecord::Base
  belongs_to :vendor
  has_many :products
  validates :product_id, presence: true
end
