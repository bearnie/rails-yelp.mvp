class Restaurant < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  #validates :stars , inclusion: { in: [1,2,3], allow_nil: false }
  validates :category, inclusion: { in: ["chinese", "italian","japanese","french","belgian"] }

  has_many :reviews, dependent: :destroy

end
