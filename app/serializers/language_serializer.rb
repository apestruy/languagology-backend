class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :language, :language_code

  has_many :translations
end
