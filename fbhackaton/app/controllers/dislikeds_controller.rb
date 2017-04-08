class DislikedsController < ApplicationController
  before_action :set_disliked, only: [:show, :edit, :update, :destroy]

  # GET /dislikeds
  # GET /dislikeds.json
  def index
    @dislikeds = Disliked.all
  end

  # GET /dislikeds/1
  # GET /dislikeds/1.json
  def show
  end

  # GET /dislikeds/new
  def new
    @disliked = Disliked.new
  end

  # GET /dislikeds/1/edit
  def edit
  end

  # POST /dislikeds
  # POST /dislikeds.json
  def create
    @disliked = Disliked.new(disliked_params)

    respond_to do |format|
      if @disliked.save
        format.html { redirect_to @disliked, notice: 'Disliked was successfully created.' }
        format.json { render :show, status: :created, location: @disliked }
      else
        format.html { render :new }
        format.json { render json: @disliked.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dislikeds/1
  # PATCH/PUT /dislikeds/1.json
  def update
    respond_to do |format|
      if @disliked.update(disliked_params)
        format.html { redirect_to @disliked, notice: 'Disliked was successfully updated.' }
        format.json { render :show, status: :ok, location: @disliked }
      else
        format.html { render :edit }
        format.json { render json: @disliked.errors, status: :unprocessable_entity }
      end
    end
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
      @disliked = Disliked.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disliked_params
      params.require(:disliked).permit(:user_id, :dislike_id)
    end
end
