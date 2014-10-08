class Sales < ActiveRecord::Base
  has_many :products
  validates :product_id, presence: true
end
