class Market < ActiveRecord::Base
  has_many :vendors
  has_many :products, through: :vendors
  validates :name, presence: true

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
