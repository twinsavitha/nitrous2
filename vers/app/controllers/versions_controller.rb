class VersionsController < ApplicationController

  def begin
    @query = Firstt.search do
        fulltext params[:search]
    end
    @products = @query.results
  end
  def start
  end
  
    
  def create
    event = params.require(:article).permit(:event)
    version = params.require(:article).permit(:version)
    change = params.require(:article).permit(:chang)
    @event = ((event.values)[0])
    @chang = ((change.values)[0])
    @version = ((version.values)[0]).to_f
    puts "checking"
    p  @event
     p  @chang 
     p  @version
      if(@version == 1.0)
        user = Firstt.create(eve: @event, modi: @chang)
      elsif (@version == 1.1)
        user = Secondd.create(eve: @event, modi: @chang)
      else 
        user = Thirdd.create(eve: @event, modi: @chang)
      end
    puts "tab values"
    p  = Firstt.all
    puts "tab valuessssssss"
    p p
    puts "json"
    p p.as_json
    puts "after plucking"
    q=Firstt.all.pluck(:eve,:modi).as_json 
    p q
    puts "end"
    redirect_to :action => "res"
  end
  
  def res
    @ver_one = Firstt.all
    @ver_two = Secondd.all
    @ver_three = Thirdd.all
  end
  
end
