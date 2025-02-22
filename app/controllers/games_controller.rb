class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]


#  def new
#    @game = Game.new
#  end

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show
    render json: @game
  end

  def update
    @game = Game.update(game_params)
    render json: @game, status: 201
  end

  def index
    games = Game.all
    render json: games
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
