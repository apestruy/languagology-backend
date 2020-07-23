class QuizSerializer < ActiveModel::Serializer
  attributes :id, :score

  belongs_to :user
  has_many :quiz_translations
end
