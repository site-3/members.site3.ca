#
# A Member is someone who has a subscription at Site 3 or is interested in one
#

class Member < ActiveRecord::Base
  has_paper_trail

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
end
