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

Quiz.create!(score: 2, user_id: 1)
Quiz.create!(score: 5, user_id: 1)
Quiz.create!(score: 4, user_id: 1)
Quiz.create!(score: 3, user_id: 1)

Language.create!(language: "Afrikaans", language_code: "af")
Language.create!(language: "Albanian", language_code: "sq")
Language.create!(language: "Arabic", language_code: "ar")
Language.create!(language: "Armenian", language_code: "hy")
Language.create!(language: "Azerbaijani", language_code: "az")
Language.create!(language: "Belarusian", language_code: "be")
Language.create!(language: "Bengali", language_code: "bn")
Language.create!(language: "Bosnian", language_code: "bs")
Language.create!(language: "Bulgarian", language_code: "bg")
Language.create!(language: "Chinese", language_code: "zh")
Language.create!(language: "Croatian", language_code: "hr")
Language.create!(language: "Czech", language_code: "cs")
Language.create!(language: "Danish", language_code: "da")
Language.create!(language: "Dutch", language_code: "nl")
Language.create!(language: "Finnish", language_code: "fi")
Language.create!(language: "French", language_code: "fr")
Language.create!(language: "Georgian", language_code: "ka")
Language.create!(language: "German", language_code: "de")
Language.create!(language: "Greek", language_code: "el")
Language.create!(language: "Haitian Creole", language_code: "ht")
Language.create!(language: "Hebrew", language_code: "he")
Language.create!(language: "Hindi", language_code: "hi")
Language.create!(language: "Hungarian", language_code: "hu")
Language.create!(language: "Icelandic", language_code: "is")
Language.create!(language: "Indonesian", language_code: "id")
Language.create!(language: "Irish", language_code: "ga")
Language.create!(language: "Italian", language_code: "it")
Language.create!(language: "Japanese", language_code: "ja")
Language.create!(language: "Korean", language_code: "ko")
Language.create!(language: "Kurdish", language_code: "ku")
Language.create!(language: "Latin", language_code: "la")
Language.create!(language: "Latvian", language_code: "lv")
Language.create!(language: "Lithuanian", language_code: "lt")
Language.create!(language: "Mongolian", language_code: "mn")
Language.create!(language: "Nepali", language_code: "ne")
Language.create!(language: "Norwegian", language_code: "no")
Language.create!(language: "Persian", language_code: "fa")
Language.create!(language: "Polish", language_code: "pl")
Language.create!(language: "Portugese", language_code: "pt")
Language.create!(language: "Punjabi", language_code: "pa")
Language.create!(language: "Romanian", language_code: "ro")
Language.create!(language: "Russian", language_code: "ru")
Language.create!(language: "Serbian", language_code: "sr")
Language.create!(language: "Shona", language_code: "sn")
Language.create!(language: "Slovenian", language_code: "sl")
Language.create!(language: "Somali", language_code: "so")
Language.create!(language: "Spanish", language_code: "es")
Language.create!(language: "Swahili", language_code: "sw")
Language.create!(language: "Swedish", language_code: "sv")
Language.create!(language: "Thai", language_code: "th")
Language.create!(language: "Turkish", language_code: "tr")
Language.create!(language: "Ukrainian", language_code: "uk")
Language.create!(language: "Urdu", language_code: "ur")
Language.create!(language: "Uzbek", language_code: "uz")
Language.create!(language: "Vietnamese", language_code: "vi")
Language.create!(language: "Welsh", language_code: "cy")
Language.create!(language: "Yiddish", language_code: "yi")

Translation.create!(input: "Hello", output: "Ciao", user_id: 1, language_id: 27)
Translation.create!(input: "Good morning", output: "Buongiorno", user_id: 1, language_id: 27)
Translation.create!(input: "Teacher", output: "Insegnante", user_id: 1, language_id: 27)
Translation.create!(input: "How are you", output: "Come stai", user_id: 1, language_id: 27)
Translation.create!(input: "Son", output: "Figlio", user_id: 1, language_id: 27)

Translation.create!(input: "The good life", output: "La bella vita", user_id: 2, language_id: 27)
Translation.create!(input: "Mom", output: "Mamma", user_id: 2, language_id: 27)
Translation.create!(input: "Sister", output: "Sorella", user_id: 2, language_id: 27)
Translation.create!(input: "Pen", output: "Penna", user_id: 2, language_id: 27)
Translation.create!(input: "Bed", output: "Letto", user_id: 2, language_id: 27)

Translation.create!(input: "My name is Sasha and I was born in Ukraine", output: "Меня зовут Саша и я родился в Украине", user_id: 1, language_id: 42)
Translation.create!(input: "Hello my name is Sasha", output: "Xin chào tên tôi là Sasha", user_id: 1, language_id: 55)
Translation.create!(input: "The weather is warm today in Italy", output: "O clima está quente hoje na Itália", user_id: 1, language_id: 39)
Translation.create!(input: "My mother's name is Mila. She is very nice. She is a nurse in a hospital", output: "Мою маму зовут Мила. Она очень хорошая. Она медсестра в больнице", user_id: 1, language_id: 42)
Translation.create!(input: "My cousin likes to play tennis", output: "Is maith le mo chol ceathrar leadóg a imirt", user_id: 1, language_id: 26)
Translation.create!(input: "My dad loves to sleep", output: "Tatălui meu îi place să doarmă", user_id: 1, language_id: 41)
Translation.create!(input: "He started school today", output: "Thosaigh sé ar scoil inniu", user_id: 1, language_id: 26)

QuizTranslation.create!(quiz_id: 1, translation_id: 1, correct: "yes")
QuizTranslation.create!(quiz_id: 1, translation_id: 5, correct: "yes")
QuizTranslation.create!(quiz_id: 1, translation_id: 2, correct: "no")
QuizTranslation.create!(quiz_id: 1, translation_id: 4, correct: "yes")
QuizTranslation.create!(quiz_id: 1, translation_id: 3, correct: "yes")

QuizTranslation.create!(quiz_id: 2, translation_id: 4, correct: "yes")
QuizTranslation.create!(quiz_id: 2, translation_id: 2, correct: "yes")
QuizTranslation.create!(quiz_id: 2, translation_id: 5, correct: "yes")
QuizTranslation.create!(quiz_id: 2, translation_id: 3, correct: "yes")
QuizTranslation.create!(quiz_id: 2, translation_id: 1, correct: "yes")

QuizTranslation.create!(quiz_id: 3, translation_id: 7, correct: "no")
QuizTranslation.create!(quiz_id: 3, translation_id: 6, correct: "yes")
QuizTranslation.create!(quiz_id: 3, translation_id: 10, correct: "yes")
QuizTranslation.create!(quiz_id: 3, translation_id: 8, correct: "yes")
QuizTranslation.create!(quiz_id: 3, translation_id: 9, correct: "no")

QuizTranslation.create!(quiz_id: 4, translation_id: 10, correct: "yes")
QuizTranslation.create!(quiz_id: 4, translation_id: 8, correct: "yes")
QuizTranslation.create!(quiz_id: 4, translation_id: 7, correct: "yes")
QuizTranslation.create!(quiz_id: 4, translation_id: 9, correct: "yes")
QuizTranslation.create!(quiz_id: 4, translation_id: 6, correct: "yes")

QuizTranslation.create!(quiz_id: 5, translation_id: 11, correct: "no")
QuizTranslation.create!(quiz_id: 5, translation_id: 13, correct: "yes")
QuizTranslation.create!(quiz_id: 5, translation_id: 15, correct: "yes")
QuizTranslation.create!(quiz_id: 5, translation_id: 12, correct: "no")
QuizTranslation.create!(quiz_id: 5, translation_id: 14, correct: "no")

QuizTranslation.create!(quiz_id: 6, translation_id: 16, correct: "yes")
QuizTranslation.create!(quiz_id: 6, translation_id: 1, correct: "yes")
QuizTranslation.create!(quiz_id: 6, translation_id: 5, correct: "yes")
QuizTranslation.create!(quiz_id: 6, translation_id: 11, correct: "yes")
QuizTranslation.create!(quiz_id: 6, translation_id: 17, correct: "yes")

QuizTranslation.create!(quiz_id: 7, translation_id: 1, correct: "yes")
QuizTranslation.create!(quiz_id: 7, translation_id: 3, correct: "no")
QuizTranslation.create!(quiz_id: 7, translation_id: 13, correct: "yes")
QuizTranslation.create!(quiz_id: 7, translation_id: 5, correct: "yes")
QuizTranslation.create!(quiz_id: 7, translation_id: 11, correct: "yes")

QuizTranslation.create!(quiz_id: 8, translation_id: 17, correct: "yes")
QuizTranslation.create!(quiz_id: 8, translation_id: 16, correct: "yes")
QuizTranslation.create!(quiz_id: 8, translation_id: 12, correct: "yes")
QuizTranslation.create!(quiz_id: 8, translation_id: 5, correct: "no")
QuizTranslation.create!(quiz_id: 8, translation_id: 14, correct: "no")