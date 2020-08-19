class Api::V1::QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all
        render json: @quizzes
    end
end
