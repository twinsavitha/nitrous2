class MortgagesController < ApplicationController
  def begin
      @type = ["normal", "e-Recordation"]
  end
  def first
      type = ((params[:typee]).values)[0]
      if(type == "normal")
        redirect_to :action => "new"
      else 
        render :first  #y not begin directly
      end
  end
    def new
      @a = [[1,1],[2, 2],[3, 3]]
      @b = [["cat1","cat1"],["cat2","cat2"],["cat3","cat3"]]
      @c = [["sch1","sch1"],["sch2","sch2"],["sch3","sch3"]]
      @d = [["div1","div1"],["div2","div2"],["div3","div3"]]
      @e = [["otm","otm"],["netbanking","netbanking"],["debit","debit"]]
      @f = [["bank1","bank1"],["bank2","bank2"],["bank3","bank3"]]
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
    @pp = ((p.values)[0]).to_i
    @qq = ((q.values)[0])
    @rr = ((r.values)[0])
    @ss = ((s.values)[0])
    @tt = ((t.values)[0])
    @uu = ((u.values)[0]).to_i 
    @vv = ((v.values)[0])
    @ww = ((w.values)[0])
     article = Mortgag.create(folio: @pp, schemecat: @qq, scheme: @rr, distopt: @ss, arncode: @tt, invamount: @uu, payoption: @vv, paybank: @ww)
     # article = Mortgage.create(params.require(:article).permit(:folio, :schemecat, :scheme, :distopt, :arncode, :invamount, :payoption, :paybank))
     # y not
      redirect_to showw_path(article)
    end
    def show
      puts "show"
      p params[:id]
      @article = Mortgag.find(params[:id])
      puts "@article"
      p @article
    end
    def index
        @query = Mortgag.search do
         
        fulltext (params[:search])
          facet(:schemecat)
          #with(:folio)
        #facet(:folio)
        #  with(:folio, params[:folio]) if params[:folio].present?
    end
     # p (@query.facet(:folio))
     # puts @query.facet(:folio).rows
     # @query.facet(:folio).rows.each do |facet|
     #   puts "inside6"
     #   puts "Author #{facet.value} has #{facet.count} pizza posts!"
     # end
     # puts "inside7"
    @products = @query.results
    end
   
    
end
