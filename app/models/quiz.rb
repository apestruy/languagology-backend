class Quiz < ApplicationRecord
  belongs_to :user
  has_many :quiz_translations
  has_many :translations, through: :quiz_translations
end
