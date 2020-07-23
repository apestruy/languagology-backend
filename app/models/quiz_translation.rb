class QuizTranslation < ApplicationRecord
  belongs_to :quiz
  belongs_to :translation
end
