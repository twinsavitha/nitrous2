class MortgagesController < ApplicationController
  def new
    @a=["Normal", "eRecordation", "eRecord & Design", "Historical Recording", "Bulk Recording"]
  end
  def play
    @b =  params.require(:article).permit("one")
    redirect_to :action => "details"
  end
  def details 
  end
  def create
      p = params.require(:article).permit(:name)
      q = params.require(:article).permit(:empid)
    @name = ((p.values)[0])
    @id = ((q.values)[0])
    user = User.create(uname: @name, uid: @id)
    
  end
end
 