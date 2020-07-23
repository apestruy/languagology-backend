class User < ApplicationRecord
    has_many :translations
    has_many :languages, through: :translations
    has_many :quizzes
    has_many :quiz_translations, through: :quizzes
end
