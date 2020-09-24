class Api::V1::QuizTranslationsController < ApplicationController
    def index
        @quiz_translations = QuizTranslation.all
        render json: @quiz_translations
    end

    def create
        @quiz_translation = QuizTranslation.create!(quiz_translation_params)
        render json: @quiz_translation
    end

    private

    def quiz_translation_params
        params.require(:quiz_translation).permit(:quiz_id, :translation_id, :correct)
    end
end
