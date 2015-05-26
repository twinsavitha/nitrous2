class ArticlesController < ApplicationController
  def begin
  end
    def create
      p = params.require(:article).permit(:courseid)
      q = params.require(:article).permit(:empid)
      emp=((q.values)[0])
      @name = Employee.where("empid=?",emp).pluck(:name)
      r=((p.values)[0])
      if (r == "1023")
        session[:tmp_checked] = @name
        redirect_to :action => "start"
        
      else
        render 'begin'
      end
    end
=begin
      if user = User.authenticate(params[:username], params[:password])
      
      
=end
    
    
    
  def start
    name = session[:tmp_checked]
    session[:tmp_checkedd] = name ## create session
    @namee = name[0]
   
    session[:tmp_checked] = nil
  end
   
    
  def new
    name = session[:tmp_checkedd]
    session[:tmp_checkeddd] = name
    
    @naaam = name[0]
    @a = Article.all
    session[:tmp_checkedd] = nil
  end



  def play
    name = session[:tmp_checkeddd]
    @naaam = name[0]
    i =  Employee.where("name=?",@naaam).pluck(:attempts).join(" ").to_i 
    Employee.where("name=?",@naaam).update_all(:attempts => i +1)
    @j =  Employee.where("name=?",@naaam).pluck(:attempts).join(" ").to_i
    a= Array.new
    b= Array.new
    i=1
    while(i<6)
      a << params.require(:article).permit("#{i}")
      i = i+1
    end
    j=0
    while(j<5)
      b << a[j].values
      j = j+1
    end
    b=b.flatten  #b has all d answers from the user.
    ans = Quiz.pluck(:answer)
    k=0
    score = 0
    correct = Array.new
    wrong = Array.new
    while(k<ans.length)
     if(ans[k] == b[k])
       score = score + 5
       correct << b[k]
     else
       wrong << b[k]
     end
     k=k+1
    end
    
    @scoree = score
    @corr = correct
    @wro = wrong
    session[:tmp_checkedd] = nil
=begin
    puts "a"
    puts a
    puts "aa"
    puts a[1].values
    puts "type"
    puts a[1].is_a? Hash
    puts "b"
    puts b
    puts "bbbbbbbbbbb"
    p b.flatten
    puts "btype"
    puts b.is_a? Array
    puts "inside"
    p ans[k]
    p b[k]
    puts "ans"
    p ans[k]
    puts "answered"
    p b[k]
    puts "inside"
    p ans[k]
    p b[k] 
    puts "correct"
    puts correct
    puts "wrong"
    puts wrong
puts "name"
      p @name
      puts "courseid"
      p p
      p r
      p r[0]
puts "q"
      p ((q.values)[0])

     puts "attempts1"
    p i

    puts "attempts2"
    p j
=end
    
  end
  
end

