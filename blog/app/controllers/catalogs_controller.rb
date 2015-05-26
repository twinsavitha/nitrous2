class CatalogsController < ApplicationController
  respond_to :json
  def new
  end
  def create
    @catalog = Catalog.new(catalog_params)
    @catalog.save
    redirect_to @catalog
  end
  def catalog_params
    params.require(:catalog).permit(:id, :cats)
  end
  def show
    @catalog = Catalog.find(params[:id])
    respond_to do |format|
    format.json { render json: @catalog.to_json}
    format.html
    end
  end
  def index
    @catalogs = Catalog.all
    respond_to do |format|
    format.json { render json: @catalogs.to_json}
    format.html
    end
  end
  def destroy
    @catalog = Catalog.find(params[:id])
    @catalog.destroy
    redirect_to catalogs_path
    end
end
