class SapsController < ApplicationController
  respond_to :json
  def new
  end
  def create
    @sap = Sap.new(sap_params)
    @sap.save
    redirect_to @sap
  end
  def sap_params
    params.require(:sap).permit(:id, :Catalog_id, :sapproduct, :platform, :saps, :mem, :iops, :disksize)
  end
  def show
    @sap = Sap.find(params[:id])
   # sa1= Sap.find_by_platform(Standalone)
    respond_to do |format|
    format.json { render json: @sap.to_json}
    format.html
    end
  end
   def index
    @saps = Sap.all
    respond_to do |format|
    format.json { render json: @saps.to_json}
    format.html
    end
  end
  def destroy
    @sap = Sap.find(params[:id])
    @sap.destroy
    redirect_to saps_path
    end
end
