class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :create, :update, :destroy]

  # GET /users
  # GET /users.json



  def index
   
     @cities = City.search(params[:search]).page(params[:page]).per_page(10)
     
    respond_to do |format|
      format.html
      format.json
    end

    

  end
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @city = City.find_by(id: params[:id])
  end

  # GET /epss/new
  def new
    @city = City.new
    @city.patients.build    
  end

  # GET /epss/1/edit
  def edit
    @city = City.find_by(id: params[:id])
  end

  # POST /epss
  # POST /epss.json
  def create
    @city = City.create(city_params)
     end

  # PATCH/PUT /epss/
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @city = City.find_by(id: params[:id])
    if @city.destroy
      redirect_to cities_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    def get_all
      @cities = City.search(params[:search]).page(params[:page]).per_page(10)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit!
    end

end
