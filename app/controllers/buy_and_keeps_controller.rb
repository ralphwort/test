class BuyAndKeepsController < ApplicationController
  before_action :set_buy_and_keep, only: [:show, :edit, :update, :destroy]

  # GET /buy_and_keeps
  # GET /buy_and_keeps.json
  def index
    @buy_and_keeps = BuyAndKeep.all
  end

  # GET /buy_and_keeps/1
  # GET /buy_and_keeps/1.json
  def show
  end

  # GET /buy_and_keeps/new
  def new
    @buy_and_keep = BuyAndKeep.new
  end

  # GET /buy_and_keeps/1/edit
  def edit
  end

  # POST /buy_and_keeps
  # POST /buy_and_keeps.json
  def create
    @buy_and_keep = BuyAndKeep.new(buy_and_keep_params)

    respond_to do |format|
      if @buy_and_keep.save
        format.html { redirect_to @buy_and_keep, notice: 'Buy and keep was successfully created.' }
        format.json { render :show, status: :created, location: @buy_and_keep }
      else
        format.html { render :new }
        format.json { render json: @buy_and_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_and_keeps/1
  # PATCH/PUT /buy_and_keeps/1.json
  def update
    respond_to do |format|
      if @buy_and_keep.update(buy_and_keep_params)
        format.html { redirect_to @buy_and_keep, notice: 'Buy and keep was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_and_keep }
      else
        format.html { render :edit }
        format.json { render json: @buy_and_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_and_keeps/1
  # DELETE /buy_and_keeps/1.json
  def destroy
    @buy_and_keep.destroy
    respond_to do |format|
      format.html { redirect_to buy_and_keeps_url, notice: 'Buy and keep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_and_keep
      @buy_and_keep = BuyAndKeep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_and_keep_params
      params.require(:buy_and_keep).permit(:title, :cost)
    end
end
