class Reader < ActiveRecord::Base
  has_many :checkouts

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
