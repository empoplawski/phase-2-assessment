get '/items/new' do
  @item = Item.new
  erb :'items/new'
end

post '/items' do
  authenticate!

  @item = Item.new(params[:item])
  
  if @item.save
    redirect "/users/#{current_user.id}"
  else
    status 422
    @errors = @item.errors.full_messages
    erb :"items/new"
  end

end
