class SapsController < ApplicationController
  def index
  end
  def show
  	@a=QuickSizer.all
    puts "try1"
    puts @a.pluck(:product)
    puts "try1_over"
  end
  def showw
  	product=params.require(:Product)
  	puts "hello"
  	puts params.require(:Product)
  	puts "hello2" # product selected
  	@b = product[:Product]
    puts "product selected"
    puts @b
    @c = QuickSizer.where("product = ?",product[:Product]).pluck(:platform) #while testing this dosn work
  	puts "VALUEEEEES" # platforms got for the corresponding product
  	puts @c
   # @c = "ABAP"
    puts "overrrr"
  end
  def third
    @product = "SAP ECC"
    @platform = "ABAP"
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
  
  def fourth
    @components = ["Application Server", "Database Server", "SCS Server"]
  end
  def disp
     # @components = ["Application Server", "Database Server", "SCS Server"]
    @components = fourth #(gets stubd )
    puts "compo"
      @saps = 80000 
      @io = 25000 
      @memory =  192 
      @iops =  30000 
      @disksize = 1000 #for each servers loop thru and get the values (arrays of hash)
      saps_per_core = 2300
      application = 0.65
      database = 0.35
      values = Array.new  
      @components.each do |serverr|
          puts "serverr"
          puts serverr
          serv = Hash.new
          puts "check2"
          server = serverr.split.first
          puts server
          serv['server']= serverr
          puts "check3"
          serv['vcpu'] = vcpu(server,@saps,saps_per_core,application,database)
          puts "check4"
        
          serv['vram'] = vram(server,@memory,application,database)
        
          serv['netio']= netio(server,@io,application,database)
        
          serv['iops'] = iops(server,@iops)
       
          serv['disk'] = disk(server,@disksize)
        puts "here starts"
        puts serv['vcpu']
        puts serv['vram']
        puts serv['netio']
         puts serv['iops']
        puts serv['disk']
        puts "finish"
          values << serv
      end
      puts "array_check"
      puts values
      puts "check if an array"
      puts values.is_a?(Array)
      @value = values
      @value.each do |post|
        puts "later value"
        puts post
          post.each do |posty|
            puts "posty"
            puts posty[1]
          end
      end
  end

      def vcpu(server,saps,saps_per_core,application,database)
        puts "check4a"
        puts "server"
        puts server
        puts "saps"
        puts saps
        puts "saps_per_core"
        puts saps_per_core
        puts "application"
        puts application
        puts "database"
        puts database
        if(server === "Application")
          puts "check4a5"
            cpu=(((application*saps)/ 2)/ saps_per_core).ceil
        elsif(server==="SCS")
            cpu=(((application*saps)/ 4)/ saps_per_core).ceil
        elsif(server==="Database")
            cpu=(((database*saps)/ 2)/ saps_per_core).ceil
        else
            cpu=(((1.0*saps)/ 2)/ saps_per_core).ceil
        end
        return cpu
      end
      def vram(server,memory,application,database)
        if(server==="Application")
            ram=(((application*memory)/ 2).ceil)
        elsif(server==="SCS")
          ram=((application*memory)/ 4).round
        elsif(server==="Database")
          ram=((database*memory)/ 2).ceil
        else
            ram=((1.0*memory)/ 2).ceil
        end
        return ram
      end
      def netio(server,io,application,database)
        if(server==="Application")
            netio=(((application*io)/ 2).ceil)
        elsif(server==="SCS")
          netio=((application*io)/ 4).round
        elsif(server==="Database")
          netio=((database*io)/ 2).ceil
        else
            netio=((1.0*io)/ 2).ceil
        end
        return netio
  end
      def iops(server,iops)
        if(server==="Application")
            io=(((0.0*iops)/ 2).ceil)
        elsif(server==="SCS")
          io=((0.0*iops)/ 4).round
        elsif(server==="Database")
            io=(1.0*iops).ceil
        else
            io=((0.0*iops)/ 2).ceil
        end
    return io
  end
  def disk(server,disksize)
        if(server==="Application")
          vdisk=((((0.0*disksize)/ 2)+200).ceil)
        elsif(server==="SCS")
          vdisk=(((0.0*disksize)/ 4)+200).round
        elsif(server==="Database")
            vdisk=((1.0*disksize)+200).ceil
        else
            vdisk=(((0.0*disksize)/ 2)+200).ceil
        end
    return vdisk
  end
  def fifth
    return @array_check=[
{"server"=>"Application Server", "vcpu"=>12, "vram"=>63, "netio"=>8125, "iops"=>0, "disk"=>200},
{"server"=>"Database Server", "vcpu"=>7, "vram"=>34, "netio"=>4375, "iops"=>30000, "disk"=>1200},
{"server"=>"SCS Server", "vcpu"=>6, "vram"=>31, "netio"=>4063, "iops"=>0, "disk"=>200}]
puts "checkkk iff array"
puts @array_check.is_a?Array

  end
  def dispp
    @array_check=fifth
@array_check.each do |val| 
  puts "val"
  puts val
  puts "third value"
  puts val["server"]
  puts "over"
  p=cpu(val["vcpu"])
  puts "p"
  puts p
  q=ram(val["vram"])
  puts "q"
  puts q
  val['catalog'] = Infracatalog.where("vcpu=? AND vram=?",p,q).pluck(:subcatalog).join(" ")
=begin
  val.each do |vall|
    puts "vall"
    puts vall
    #to get catalog 

  end
=end

end
puts "added"
puts @array_check 
end
def cpu(vcpu)
  if(vcpu<=1)
                cpu=1
          elsif(vcpu<=2)
                cpu=2
          elsif(vcpu<=4)
                cpu=4
          elsif(vcpu<=8)
                cpu=8
          elsif(vcpu<=12)
                cpu=12
          elsif(vcpu<=24)
                cpu=24
          else
               cpu=vcpu
      end
    return cpu

end
def ram(vram)
if(vram<=4)
                ram=4
          elsif(vram<=8)
                ram=8
          elsif(vram<=16)
                ram=16
          elsif(vram<=32)
                ram=32
          elsif(vram<=64)
                ram=64
          elsif(vram<=96)
                ram=96
          elsif(vram<=128)
                ram=128
          elsif(vram<=192)
                ram=192
          elsif(vram<=256)
                ram=256
          elsif(vram<=512)
                ram=512
          elsif(vram<=1024)
                ram=1024
         
          else
               ram=vram
      end
    return ram

  end

  def sixth
    @components = ["Application Server","Database Server","SCS Server"]
    @catalog    = ["ExtraLarge1","Large2","Large1"]
    @type       = ["virtual","physical","virtual"]
  end
  def view
    @components = ["Application Server","Database Server","SCS Server"]
    @catalog    = ["ExtraLarge1","Large2","Large1"]
    @type       = ["virtual","physical","virtual"]
    subcatalog = Infracatalog.pluck(:subcatalog)
    cpu = Infracatalog.pluck(:vcpu)
    ram = Infracatalog.pluck(:vram)
    nic = Infracatalog.pluck(:vnic)
    catalog_size = subcatalog.size()#actual size
    @dimension = catalog_size
    catalogsize = @components.size()# output size
    @physical=Array.new(catalog_size,0)#physical
    @virtual=Array.new(catalog_size,0)#virtual
    puts "catalog_size"
    puts catalog_size
    puts "catalogsize"
    puts catalogsize
    i=0
    while i < catalogsize
      j=0
      while j < catalog_size
        if(@catalog[i] === subcatalog[j])
          if(@type[i]==="physical")
            @physical[j] = '1'
          else
            @virtual[j]= '1'
          end
        end
      j+=1
      end
    i+=1
  end
  puts "physical"
  puts @physical
  puts "virtual"
  puts @virtual
  end
end
