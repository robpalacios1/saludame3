require 'sinatra'

get '/' do
   unless params[:nombre]
     'Hola mundo!'
   else
      "Hola #{params[:nombre]}"
   end


<<-HTML
   <h1>Hola dime a quien saludar</h1>
   <form action="/nuevo/objeto" method="post">
    <input type="text" name="verbo">
    <input type="submit" value="Submit">
   </form>
  HTML
end

get '/:nombre' do
 "Hola #{params[:nombre]}"
end

post '/nuevo/objeto' do
 "#{params[:verbo]}"
end