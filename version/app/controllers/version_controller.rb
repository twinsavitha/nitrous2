class VersionController < ApplicationController
  
  def start
    
  end
  def create
     p = params.require(:article).permit(:event)
     q = params.require(:article).permit(:version)
     @event = ((p.values)[0])
     @version = ((q.values)[0]).to_f
      if(@version == 1.0)
        puts "version 1.0"
       # aa = Firsstt.new
        user = First.create(event: "@event", version: "@version")

        if @article.save
          redirect_to @article
        else
          render 'start'
        end
      elsif (@version == 1.1)
        puts "version 1.1"
      else 
        puts "version 1.2"
      end
    
  end
  
  def article_params
    params.require(:article).permit(:one, :two)
  end
  
end
