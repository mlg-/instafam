class FamilyCircle < ActiveRecord::Base
  has_many :users
  has_many :photos

  validates :user_id, presence: true
  validates :family_id, presence: true
end