class Vendor < ActiveRecord::Base
  has_many :products
  has_many :sales

  belongs_to :market

  validates :name , presence: true
  validates :username, presence: true
  validates :password, presence: true
end
