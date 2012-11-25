#  Tic Tac Toe Code

require "rubygems"
require "sinatra"
require "slim"
require "sass"

get '/' do
  slim :index
end

get '/xwon' do
  slim :xwon
end

get '/owon' do
  slim :owon
end

get '/draw' do
  slim :draw
end

get '/style.css' do
  sass :style
end

post '/' do
  box1 = params[:box1]
  box2 = params[:box2]
  box3 = params[:box3]
  box4 = params[:box4]
  box5 = params[:box5]
  box6 = params[:box6]
  box7 = params[:box7]
  box8 = params[:box8]
  box9 = params[:box9]
  
  row1 = box1 + box2 + box3
  row2 = box4 + box5 + box6
  row3 = box7 + box8 + box9
  
  col1 = box1 + box4 + box7
  col2 = box2 + box5 + box8
  col3 = box3 + box6 + box9
  
  diag1 = box1 + box5 + box9
  diag2 = box3 + box5 + box7
  
  # Players
 if (row1 == "xxx") || (row2 == "xxx") || (row3 == "xxx") || (col1 == "xxx") || (col2 == "xxx") || (col3 == "xxx") || (diag1 == "xxx") || (diag2 == "xxx")
   redirect("/xwon")
 elsif (row1 == "ooo") || (row2 == "ooo") || (row3 == "ooo") || (col1 == "ooo") || (col2 == "ooo") || (col3 == "ooo") || (diag1 == "ooo") || (diag2 == "ooo")
   redirect("/owon")
 else 
   redirect("/draw")
 end
  
end