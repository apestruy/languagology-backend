class Api::V1::QuizTranslationsController < ApplicationController
    def index
        @quiz_translations = QuizTranslation.all
        render json: @quiz_translations
    end
end
