class StadtsController < ApplicationController
  before_action :set_stadt, only: [:show, :edit, :update, :destroy]

  # GET /stadts
  # GET /stadts.json
  def index
    @stadts = Stadt.all
  end

  # GET /stadts/1
  # GET /stadts/1.json
  def show
  end

  # GET /stadts/new
  def new
    @stadt = Stadt.new
  end

  # GET /stadts/1/edit
  def edit
  end

  # POST /stadts
  # POST /stadts.json
  def create
    @stadt = Stadt.new(stadt_params)

    respond_to do |format|
      if @stadt.save
        format.html { redirect_to @stadt, notice: 'Stadt was successfully created.' }
        format.json { render :show, status: :created, location: @stadt }
      else
        format.html { render :new }
        format.json { render json: @stadt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stadts/1
  # PATCH/PUT /stadts/1.json
  def update
    respond_to do |format|
      if @stadt.update(stadt_params)
        format.html { redirect_to @stadt, notice: 'Stadt was successfully updated.' }
        format.json { render :show, status: :ok, location: @stadt }
      else
        format.html { render :edit }
        format.json { render json: @stadt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stadts/1
  # DELETE /stadts/1.json
  def destroy
    @stadt.destroy
    respond_to do |format|
      format.html { redirect_to stadts_url, notice: 'Stadt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadt
      @stadt = Stadt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stadt_params
      params.require(:stadt).permit(:anzahlEinwohner, :name, :ort)
    end
end
