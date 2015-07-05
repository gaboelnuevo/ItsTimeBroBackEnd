class AlarmasController < ApplicationController
  before_action :set_alarma, only: [:show, :edit, :update, :destroy]

  # GET /alarmas
  # GET /alarmas.json
  def index
    @alarmas = Alarma.all
    render json: @alarmas
  end

  # GET /alarmas/1
  # GET /alarmas/1.json
  def show

  end

  # GET /alarmas/new
  def new
    @alarma = Alarma.new
  end

  # GET /alarmas/1/edit
  def edit
  end

  # POST /alarmas
  # POST /alarmas.json
  def create
    @alarma = Alarma.new(alarma_params)

    respond_to do |format|
      if @alarma.save
        format.html { redirect_to @alarma, notice: 'Alarma was successfully created.' }
        format.json { render :show, status: :created, location: @alarma }
      else
        format.html { render :new }
        format.json { render json: @alarma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alarmas/1
  # PATCH/PUT /alarmas/1.json
  def update
    respond_to do |format|
      if @alarma.update(alarma_params)
        format.html { redirect_to @alarma, notice: 'Alarma was successfully updated.' }
        format.json { render :show, status: :ok, location: @alarma }
      else
        format.html { render :edit }
        format.json { render json: @alarma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarmas/1
  # DELETE /alarmas/1.json
  def destroy
    @alarma.destroy
    respond_to do |format|
      format.html { redirect_to alarmas_url, notice: 'Alarma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarma
      @alarma = Alarma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alarma_params
      params.require(:alarma).permit(:nombreAlarma, :fechaAlarma, :usuario_id)
    end
end
