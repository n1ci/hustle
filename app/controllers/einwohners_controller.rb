class EinwohnersController < ApplicationController
  before_action :set_einwohner, only: [:show, :edit, :update, :destroy]

  # GET /einwohners
  # GET /einwohners.json
  def index
    @einwohners = Einwohner.all
  end

  # GET /einwohners/1
  # GET /einwohners/1.json
  def show
  end

  # GET /einwohners/new
  def new
    @einwohner = Einwohner.new
    @stadts = Stadt.select("id, name as stadt_name").order(:name, :id)
  end

  # GET /einwohners/1/edit
  def edit
    @stadts = Stadtt.select("id, name as stadt_name").order(:name, :id)
  end

  # POST /einwohners
  # POST /einwohners.json
  def create
    @einwohner = Einwohner.new(einwohner_params)

    respond_to do |format|
      if @einwohner.save
        format.html { redirect_to @einwohner, notice: 'Einwohner was successfully created.' }
        format.json { render :show, status: :created, location: @einwohner }
      else
        format.html { render :new }
        format.json { render json: @einwohner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /einwohners/1
  # PATCH/PUT /einwohners/1.json
  def update
    respond_to do |format|
      if @einwohner.update(einwohner_params)
        format.html { redirect_to @einwohner, notice: 'Einwohner was successfully updated.' }
        format.json { render :show, status: :ok, location: @einwohner }
      else
        format.html { render :edit }
        format.json { render json: @einwohner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /einwohners/1
  # DELETE /einwohners/1.json
  def destroy
    @einwohner.destroy
    respond_to do |format|
      format.html { redirect_to einwohners_url, notice: 'Einwohner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_einwohner
      @einwohner = Einwohner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def einwohner_params
      params.require(:einwohner).permit(:name, :alter, :stadt_id)
    end
end
