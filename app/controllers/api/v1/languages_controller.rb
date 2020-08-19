class Api::V1::LanguagesController < ApplicationController
    def index
        @languages = Language.all
        render json: @languages
    end
end
