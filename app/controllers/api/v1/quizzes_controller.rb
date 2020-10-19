class Api::V1::QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all.select { |quiz| quiz.user_id == current_user.id }
        render json: @quizzes
    end

    def create
        @quiz = Quiz.create!(quiz_params)
        render json: @quiz
    end

    private

    def quiz_params
        params.require(:quiz).permit(:score, :user_id)
    end 
end
