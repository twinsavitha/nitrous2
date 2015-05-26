class SapsController < ApplicationController
  
  def index
  end
  def show
    @a=QuickSizer.all
  end
  def showw
  	product=params.require(:Product)
  	puts "hello"
  	puts params.require(:Product)
  	puts "hello2"
    @c = product[:Product] # product selected
    puts @c
  	@b = QuickSizer.where("product = ?",product[:Product]).pluck(:platform)
    puts "VALUEEEEES" # platforms got for the corresponding product
  	puts @b
=begin
    @d = Component.where("product = ? AND platform=?",@c,@b).pluck(:servername)
    puts "@d" #serverz name for the product and the platform chosens
    puts @d
    e = Array.new
    @d.each do |dd|
      puts "dd"
      puts dd #iterate separatly
      data = Hash.new
      data[pro] = @c
      data[pla] = @b
      data[server]= dd
      data[saps]= QuickSizer.where("product=? AND platform=?",@c,@b).pluck(:saps).join(" ").to_i
      
    end
=end
  end
  def showww
    @product = "SAP ECC"
    @platform = "ABAP"
    @components = Component.where("product=? AND platform=?",@product,@platform).pluck(:servername)
    puts "check"
    puts @components
    @saps = QuickSizer.where("product=? AND platform=?",@product,@platform).pluck(:saps).join(" ").to_i
    @io = QuickSizer.where("product=? AND platform=?",@product,@platform).pluck(:io).join(" ").to_i
    @memory = QuickSizer.where("product=? AND platform=?",@product,@platform).pluck(:memory).join(" ").to_i
    @iops =  QuickSizer.where("product=? AND platform=?",@product,@platform).pluck(:iops).join(" ").to_i
    @disksize = QuickSizer.where("product=? AND platform=?",@product,@platform).pluck(:disksize).join(" ").to_i
  end
end
