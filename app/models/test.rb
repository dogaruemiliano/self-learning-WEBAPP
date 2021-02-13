class Test < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy

  validates :user, presence: true
  validates :name, presence: true
end
