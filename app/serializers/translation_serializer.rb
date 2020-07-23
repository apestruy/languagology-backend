class TranslationSerializer < ActiveModel::Serializer
  attributes :id, :input, :output

  belongs_to :user
  belongs_to :language
  has_many :quiz_translations
end
