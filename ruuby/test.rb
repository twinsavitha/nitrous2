def a_as(user)
  @user = user
  @tweet = []
  puts "usser"
  puts @user
  puts "tweet"
  puts @tweet
  yield         #calls text method 
end
def text(str)
  @tweet << str
  puts "tweeet"
  puts @tweet
end
a_as 'code' do   #DSL
  text 'putting it'
end7