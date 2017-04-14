class VotesController < ApplicationController
  before_action :get_votes, only: [:show, :index]
  before_action :set_vote, only: [:show, :update, :edit, :destroy]

  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.save
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_votes
      @votes = Vote.all
    end

    def set_vote
      @vote = Vote.find(params[:id])
    end

    def vote_params
      params.require(:vote).permit(:name, :description, :votes, :user_id, :lat, :lon)
    end


end
