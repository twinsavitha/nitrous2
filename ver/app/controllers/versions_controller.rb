class VersionsController < ApplicationController
  
  def index
        @query = One.search do
        fulltext params[:search] 
        facet :incident
        with(:incident, params[:inci]) if params[:inci].present?
  end
    puts "jus query"
    p @query
    puts "over"
    @products = @query.results
    puts "after res on query"
    p @products
  end
  
  def start
  end
  
  def show
    @product = One.find(params[:id])
  end
  
  def create
    event = params.require(:eventt).permit(:event)
    version = params.require(:eventt).permit(:version)
    change = params.require(:eventt).permit(:chang)
    puts "before"
    p event
    p version
    p change
    @event = ((event.values)[0])
    @chang = ((change.values)[0])
    @version = ((version.values)[0]).to_f
    puts "checking"
    p  @event
    p  @chang 
    p  @version
    One.create(versionnumber: @version, incident: @event, modifications: @chang)
    redirect_to :action => "res"
  end
  def res
     @ver_one = One.all
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = One.find(params[:id])
    end
end
