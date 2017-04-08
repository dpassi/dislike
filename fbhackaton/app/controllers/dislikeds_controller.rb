class DislikedsController < ApplicationController
  before_action :set_disliked, only: [:show, :edit,:destroy]

  # GET /dislikeds
  # GET /dislikeds.json
  def index
    @dislikes = Dislike.all
  end

  # GET /dislikeds/1
  # GET /dislikeds/1.json
  def show
  end

  # GET /dislikeds/new
  def new
    @disliked = Disliked.new
  end

  def add_quantity
  end

  # GET /dislikeds/1/edit
  def edit
  end

  # POST /dislikeds
  # POST /dislikeds.json
  def create
    #@disliked = Disliked.new(disliked_params)
    p "WENAAAAA"

  end

  # PATCH/PUT /dislikeds/1
  # PATCH/PUT /dislikeds/1.json
  def update
    @dislike = Dislike.find(params[:id])
    p @dislike.name
    @dislike.quantity = @dislike.quantity+1
    @dislike.save
    p "FUNCIONAAAAA"

    render '/dislikeds'
  end

  # DELETE /dislikeds/1
  # DELETE /dislikeds/1.json
  def destroy
    @disliked.destroy
    respond_to do |format|
      format.html { redirect_to dislikeds_url, notice: 'Disliked was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disliked
      @disliked = Dislike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disliked_params
      params.require(:disliked).permit(:user_id, :dislike_id)
    end
end
