class QuizController < ApplicationController
  respond_to :json, :html

  # def index
  #   @quiz_list = Quiz.all
  #   respond_with @quiz_list
  # end

  def show
    quiz_row = Quiz.find(params[:id])
    questions = quiz_row.questions
    respond_with questions
  end

  # def create
  # end
end
