class ScoreController < ApplicationController
  respond_to :json

  def index
    respond_with(Score.all.order(high_score: :desc))
  end

  def create
    high_score = ((score_params[:userScore].to_f / score_params[:total]) * 100).to_i
    @score = Score.create(name: score_params[:name], high_score: high_score)
    respond_with([@score])
  end

  private
  def score_params
    params.permit(:name, :userScore, :total)
  end
end
