class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name

  has_many :quizzes
  has_many :translations
end
