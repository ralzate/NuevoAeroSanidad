class ArlesController < ApplicationController
  before_action :set_arl, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :create, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
     @arles = Arl.search(params[:search]).page(params[:page]).per_page(12)
    respond_to do |format|
      format.html
      format.json
    end
  end
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @arl = Arl.find_by(id: params[:id])
  end

  # GET /epss/new
  def new
    @arl = Arl.new
    @arl.clinic_histories.build    
  end

  # GET /epss/1/edit
  def edit
    @arl = Arl.find_by(id: params[:id])
  end

  # POST /epss
  # POST /epss.json
  def create
    @arl = Arl.create(arl_params)
  end

  # PATCH/PUT /epss/
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @arl.update(arl_params)
        format.html { redirect_to @arl, notice: 'eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @arl }
      else
        format.html { render :edit }
        format.json { render json: @arl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @arl = Arl.find_by(id: params[:id])
    if @arl.destroy
      redirect_to arles_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arl
      @arl = Arl.find(params[:id])
    end

    def get_all
      @arles = Arl.search(params[:search]).page(params[:page]).per_page(12)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arl_params
      params.require(:arl).permit!
    end
end
