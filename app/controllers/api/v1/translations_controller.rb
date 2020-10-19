class Api::V1::TranslationsController < ApplicationController
    def index
        @translations = Translation.all.select { |translation| translation.user_id == current_user.id }
        render json: @translations
    end

    def create
        @translation = Translation.create!(translation_params)
        render json: @translation
    end

    private

    def translation_params
        params.require(:translation).permit(:input, :output, :user_id, :language_id)
    end 
end
