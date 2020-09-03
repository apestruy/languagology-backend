class QuizTranslationSerializer < ActiveModel::Serializer
  attributes :id, :correct

  belongs_to :quiz
  belongs_to :translation
end
