# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Quiz.destroy_all
Language.destroy_all
Translation.destroy_all
QuizTranslation.destroy_all

User.reset_pk_sequence
Quiz.reset_pk_sequence
Language.reset_pk_sequence
Translation.reset_pk_sequence
QuizTranslation.reset_pk_sequence

User.create!(username: "sasha", password: "123", name: "Sasha")
User.create!(username: "alina", password: "alina", name: "alina")

Quiz.create!(score: 4, user_id: 1)
Quiz.create!(score: 5, user_id: 1)
Quiz.create!(score: 3, user_id: 2)
Quiz.create!(score: 5, user_id: 2)

Language.create!(language: "Arabic", language_code: "ar")
Language.create!(language: "French", language_code: "fr")
Language.create!(language: "German", language_code: "ge")
Language.create!(language: "Greek", language_code: "el")
Language.create!(language: "Hebrew", language_code: "he")
Language.create!(language: "Hindi", language_code: "hi")
Language.create!(language: "Irish", language_code: "ga")
Language.create!(language: "Hungarian", language_code: "hu")
Language.create!(language: "Italian", language_code: "it")
Language.create!(language: "Japanese", language_code: "ja")
Language.create!(language: "Korean", language_code: "ko")
Language.create!(language: "Latin", language_code: "la")
Language.create!(language: "Polish", language_code: "pl")
Language.create!(language: "Portugese", language_code: "pt")
Language.create!(language: "Romanian", language_code: "ro")
Language.create!(language: "Russian", language_code: "ru")
Language.create!(language: "Serbian", language_code: "sr")
Language.create!(language: "Slovenian", language_code: "sl")
Language.create!(language: "Spanish", language_code: "es")
Language.create!(language: "Swedish", language_code: "sv")
Language.create!(language: "Ukrainian", language_code: "uk")
Language.create!(language: "Vietnamese", language_code: "vi")

Translation.create!(input: "Hello", output: "Ciao", user_id: 1, language_id: 9)
Translation.create!(input: "Good morning", output: "Buongiorno", user_id: 1, language_id: 9)
Translation.create!(input: "teacher", output: "insegnante", user_id: 1, language_id: 9)
Translation.create!(input: "How are you", output: "Come stai", user_id: 1, language_id: 9)
Translation.create!(input: "son", output: "figlio", user_id: 1, language_id: 9)

Translation.create!(input: "the good life", output: "la bella vita", user_id: 2, language_id: 9)
Translation.create!(input: "mom", output: "mamma", user_id: 2, language_id: 9)
Translation.create!(input: "sister", output: "sorella", user_id: 2, language_id: 9)
Translation.create!(input: "pen", output: "penna", user_id: 2, language_id: 9)
Translation.create!(input: "bed", output: "letto", user_id: 2, language_id: 9)

QuizTranslation.create!(quiz_id: 1, translation_id: 1)
QuizTranslation.create!(quiz_id: 1, translation_id: 2)
QuizTranslation.create!(quiz_id: 1, translation_id: 3)
QuizTranslation.create!(quiz_id: 1, translation_id: 4)
QuizTranslation.create!(quiz_id: 1, translation_id: 5)
QuizTranslation.create!(quiz_id: 2, translation_id: 1)
QuizTranslation.create!(quiz_id: 2, translation_id: 2)
QuizTranslation.create!(quiz_id: 2, translation_id: 3)
QuizTranslation.create!(quiz_id: 2, translation_id: 4)
QuizTranslation.create!(quiz_id: 2, translation_id: 5)

QuizTranslation.create!(quiz_id: 3, translation_id: 6)
QuizTranslation.create!(quiz_id: 3, translation_id: 7)
QuizTranslation.create!(quiz_id: 3, translation_id: 8)
QuizTranslation.create!(quiz_id: 3, translation_id: 9)
QuizTranslation.create!(quiz_id: 3, translation_id: 10)
QuizTranslation.create!(quiz_id: 4, translation_id: 6)
QuizTranslation.create!(quiz_id: 4, translation_id: 7)
QuizTranslation.create!(quiz_id: 4, translation_id: 8)
QuizTranslation.create!(quiz_id: 4, translation_id: 9)
QuizTranslation.create!(quiz_id: 4, translation_id: 10)