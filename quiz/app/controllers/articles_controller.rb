class ArticlesController < ApplicationController
  def new
  end
  def index
  end
  def play
    @p=params.require(:article).permit(:x)
    @q=params.require(:article).permit(:arr)
    @r=params.require(:article).permit(:elem)
    @s=params.require(:article).permit(:pri)
    @t=params.require(:article).permit(:i)
    puts @p  
    puts @q
    puts @r  
    puts @s
    puts @t
    ans = Array.new
    res = Array.new 
    correct = Array.new
    wrong = Array.new 
    ans = ["object","all","three","not_printed","two"]
    res = [@p['x'],@q['arr'],@r['elem'],@s['pri'],@t['i']]
    sizee = ans.length
    score = 0
    i=0
    while(i<sizee)
      if(ans[i]==res[i])
        score = score + 5
        correct << res[i]
      else
        wrong << res[i]
      end
      i+=1
    end
    @scoree = score
    @corr = correct
    @wro = wrong
    puts "score"
    puts score
    puts "correct"
    puts @corr
    puts "wrong"
    puts @wro
  end
  def show
    #@a=params.require(:msg).permit(:post_id)
    @p=params[:post_id]
    @q=params[:post_idd].split(" ")
    @r=params[:post_iddd].split(" ")
    puts "check value"
    puts @p
    
    puts "correctt"
    puts @q
    puts "wronggg"
    puts @r
    #@p = params.require(:article).permit(:post_id)
  end
=begin
  def score
   # ans = Array.new
   # res = Array.new 
   # ans = ["object","all","three","not_printed","two"]
   # res = ["object","all","three","not_printed","two"]
   # correct = Array.new
   # wrong = Array.new
   # sizee = ans.length
   # i=0
   # while(i<sizee)
      if(ans[i]==res[i])
        correct << res[i] 
      else
        wrong << res[i]
      end
      i+=1
    end
    @corr = correct
    @wron = wrong

    @a=params.require(:msg).permit(:post_id)
   
  end
=end
 
end
