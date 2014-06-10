class Category < ActiveRecord::Base
  validates :name, presence: true, unique: true
end
