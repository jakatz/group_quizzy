class QuestionsController < ApplicationController
  respond_to :json

  def index
    respond_with Question.all
  end
end
