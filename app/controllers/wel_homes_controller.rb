class WelHomesController < ApplicationController
  before_action :set_wel_home, only: [:show, :edit, :update, :destroy]

  # GET /wel_homes
  # GET /wel_homes.json
  def index
    @wel_homes = WelHome.all
  end

  # GET /wel_homes/1
  # GET /wel_homes/1.json
  def show
  end

  # GET /wel_homes/new
  def new
    @wel_home = WelHome.new
  end

  # GET /wel_homes/1/edit
  def edit
  end

  # POST /wel_homes
  # POST /wel_homes.json
  def create
    @wel_home = WelHome.new(wel_home_params)

    respond_to do |format|
      if @wel_home.save
        format.html { redirect_to @wel_home, notice: 'Wel home was successfully created.' }
        format.json { render :show, status: :created, location: @wel_home }
      else
        format.html { render :new }
        format.json { render json: @wel_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wel_homes/1
  # PATCH/PUT /wel_homes/1.json
  def update
    respond_to do |format|
      if @wel_home.update(wel_home_params)
        format.html { redirect_to @wel_home, notice: 'Wel home was successfully updated.' }
        format.json { render :show, status: :ok, location: @wel_home }
      else
        format.html { render :edit }
        format.json { render json: @wel_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wel_homes/1
  # DELETE /wel_homes/1.json
  def destroy
    @wel_home.destroy
    respond_to do |format|
      format.html { redirect_to wel_homes_url, notice: 'Wel home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wel_home
      @wel_home = WelHome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wel_home_params
      params.fetch(:wel_home, {})
    end
end
