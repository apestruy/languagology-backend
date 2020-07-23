class QuizTranslationSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :quiz
  belongs_to :translation
end
