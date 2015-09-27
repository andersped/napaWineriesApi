class WineriesController < ApplicationController
	before_action :set_varietal, only: [:show, :update, :destroy]

  # GET /wineries
  # GET /wineries.json
  def index
    @wineries = Winery.all

    render json: @wineries.to_json({:include => {:lists => {:include => [:varietals, :tasting_rooms]}}}), status: :ok
  end

  # GET /wineries/1
  # GET /wineries/1.json
  def show
    render json: @winery
  end

  # POST /varietals
  # POST /varietals.json
  def create
    @winery = Winery.new(winery_params)

    if @winery.save
      render json: @winery.lists, include: ['lists'],status: :created, location: @winery
    else
      render json: @winery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /varietals/1
  # PATCH/PUT /varietals/1.json
  def update
    @winery = Winery.find(params[:id])

    if @winery.update(winery_params)
      head :no_content
    else
      render json: @winery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /varietals/1
  # DELETE /varietals/1.json
  def destroy
    @winery.destroy

    head :no_content
  end

  private

    def set_winery
      @winery = Winery.find(params[:id])
    end

    def winery_params
      params.require(:winery).permit(:lists)
    end

end
