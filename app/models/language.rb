class Language < ApplicationRecord
    has_many :translations
    has_many :users, through: :translations
end
