class Family < ActiveRecord::Base
  has_many :users, through: :family_circles

  validates :name, presence: true
end