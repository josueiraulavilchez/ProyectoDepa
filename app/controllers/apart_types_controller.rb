class ApartTypesController < ApplicationController
  before_action :set_apart_type, only: [:show, :edit, :update, :destroy]

  # GET /apart_types
  # GET /apart_types.json
  def index
    @apart_types = ApartType.all
  end

  # GET /apart_types/1
  # GET /apart_types/1.json
  def show
  end

  # GET /apart_types/new
  def new
    @apart_type = ApartType.new
  end

  # GET /apart_types/1/edit
  def edit
  end

  # POST /apart_types
  # POST /apart_types.json
  def create
    @apart_type = ApartType.new(apart_type_params)

    respond_to do |format|
      if @apart_type.save
        format.html { redirect_to @apart_type, notice: 'Apart type was successfully created.' }
        format.json { render :show, status: :created, location: @apart_type }
      else
        format.html { render :new }
        format.json { render json: @apart_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apart_types/1
  # PATCH/PUT /apart_types/1.json
  def update
    respond_to do |format|
      if @apart_type.update(apart_type_params)
        format.html { redirect_to @apart_type, notice: 'Apart type was successfully updated.' }
        format.json { render :show, status: :ok, location: @apart_type }
      else
        format.html { render :edit }
        format.json { render json: @apart_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apart_types/1
  # DELETE /apart_types/1.json
  def destroy
    @apart_type.destroy
    respond_to do |format|
      format.html { redirect_to apart_types_url, notice: 'Apart type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apart_type
      @apart_type = ApartType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apart_type_params
      params.require(:apart_type).permit(:name, :area, :floor)
    end
end
