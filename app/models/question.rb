class Question < ApplicationRecord
  belongs_to :test

  validates :test, presence: true
  validates :question, presence: true
  validates :correct_answer, presence: true
end
