class MortsController < ApplicationController
    require 'rubygems'
  require 'redis'
   require 'json'
  def new
    @a = [["one","one"],["two", "two"],["three", "three"]]
    @b = [["cat1","cat1"],["cat2","cat2"],["cat3","cat3"]]
    @c = [["sch1","sch1"],["sch2","sch2"],["sch3","sch3"]]
    @d = [["div1","div1"],["div2","div2"],["div3","div3"]]
    @e = [["otm","otm"],["netbanking","netbanking"],["debit","debit"]]
    @f = [["bank1","bank1"],["bank2","bank2"],["bank3","bank3"]]
    $redis = Redis.new

data = {"user" => "SAVI"}


  msg = "Hello"
  $redis.publish 'rubyonrails', data.merge('msg' => msg.strip).to_json
 
  end
  def create
     p = params.require(:article).permit(:foliono)
    q = params.require(:article).permit(:category)
    r = params.require(:article).permit(:scheme)
    s = params.require(:article).permit(:divoption)
    t = params.require(:article).permit(:arncode)
    u = params.require(:article).permit(:amount)
    v = params.require(:article).permit(:payoption)
    w = params.require(:article).permit(:paybank)
    @pp = ((p.values)[0])
    @qq = ((q.values)[0])
    @rr = ((r.values)[0])
    @ss = ((s.values)[0])
    @tt = ((t.values)[0])
    @uu = ((u.values)[0]) 
    @vv = ((v.values)[0])
    @ww = ((w.values)[0])
    p @pp
    p @qq
    p @rr
    p @ss
    p @tt
    p @uu
    p @vv
    p @ww
@article = Mortgage.create(folio: @pp, schemecat: @qq, scheme: @rr, distopt: @ss, arncode: @tt, invamount: @uu, payoption: @vv, paybank: @ww)
    redirect_to :action => "res"
  end
  def res
    @a =  Mortgage.all
  end
  def index
     @query = Mortgage.search do
        fulltext params[:search]
    end
    @products = @query.results
    
  end
  
  
  
  def article_params
    params.require(:article).permit(:foliono, :category, :scheme, :divoption, :arncode, :amount, :payoption, :paybank)
  end
end
