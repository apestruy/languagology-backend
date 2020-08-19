class Api::V1::TranslationsController < ApplicationController
    def index
        @translations = Translation.all
        render json: @translations
    end
end
