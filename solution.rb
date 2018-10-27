require "sinatra"
get "/" do
    <<-HTML
    <h1>Hola dime a quien saludar</h1>
    <form action="/saludo" method="post">
         <input type="text" name="nombre">
         <input type="submit" value ="submit">
     </form>

    HTML

end 

post "/saludo" do
@nombre=params[:nombre]
erb :"/saludo"
end   