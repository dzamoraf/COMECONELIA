class AlgosController < ApplicationController
  before_action :set_algo, only: [:show, :edit, :update, :destroy]

  # GET /algos
  # GET /algos.json
  def index
    @algos = Algo.all
  end

  # GET /algos/1
  # GET /algos/1.json
  def show
  end

  # GET /algos/new
  def new
    @algo = Algo.new
  end

  # GET /algos/1/edit
  def edit
  end

  # POST /algos
  # POST /algos.json
  def create
    @algo = Algo.new(algo_params)

    respond_to do |format|
      if @algo.save
        format.html { redirect_to @algo, notice: 'Algo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @algo }
      else
        format.html { render action: 'new' }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /algos/1
  # PATCH/PUT /algos/1.json
  def update
    respond_to do |format|
      if @algo.update(algo_params)
        format.html { redirect_to @algo, notice: 'Algo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /algos/1
  # DELETE /algos/1.json
  def destroy
    @algo.destroy
    respond_to do |format|
      format.html { redirect_to algos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_algo
      @algo = Algo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def algo_params
      params.require(:algo).permit(:nombre, :fecha)
    end
end
