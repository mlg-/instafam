class FamilyCircle < ActiveRecord::Base
  validates :user_id, presence: true
  validates :family_id, presence: true
end