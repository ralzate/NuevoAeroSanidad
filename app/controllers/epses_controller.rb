class EpsesController < ApplicationController
  before_action :set_eps, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :create, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
     @epses = Eps.search(params[:search]).page(params[:page]).per_page(10)
    respond_to do |format|
      format.html
      format.json
    end
  end
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @eps = Eps.find_by(id: params[:id])
  end

  # GET /epss/new
  def new
    @eps = Eps.new
    @eps.clinic_histories.build    
  end

  # GET /epss/1/edit
  def edit
    @eps = Eps.find_by(id: params[:id])
  end

  # POST /epss
  # POST /epss.json
  def create
    @eps = Eps.create(eps_params)

    
  end

  # PATCH/PUT /epss/
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @eps.update(eps_params)
        format.html { redirect_to @eps, notice: 'eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @eps }
      else
        format.html { render :edit }
        format.json { render json: @eps.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @eps = Eps.find_by(id: params[:id])
    if @eps.destroy
      redirect_to epses_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eps
      @eps = Eps.find(params[:id])
    end


    def get_all
      @epses = Eps.search(params[:search]).page(params[:page]).per_page(12)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eps_params
      params.require(:eps).permit!
    end
end
