class Product < ActiveRecord::Base
  has_many :vendors
  has_many :vendors, through: :markets
  validates :name, presence: true
end
