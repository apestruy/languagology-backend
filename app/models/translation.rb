class Translation < ApplicationRecord
  belongs_to :user
  belongs_to :language
  has_many :quiz_translations
  has_many :quizzes, through: :quiz_translations
end
