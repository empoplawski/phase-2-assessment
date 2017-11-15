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

#edit
get '/items/:id/edit' do
  authenticate!
  # "this is the contacts edit action"
  @item = Item.find(params[:id])
  is_authorized?(@item.user)
  erb :"items/edit"
end

#update
put '/items/:id' do
  p params
  authenticate!
  @item = Item.find(params[:id])
  is_authorized?(@item.user)
  if @item.update(params[:item])

    redirect "/items/#{@item.id}"
  else
    status 422
    @errors = @item.errors.full_messages
    erb :"items/edit"
  end

end

delete '/items/:id' do
  authenticate!
  @item = Item.find(params[:id])
  is_authorized?(@item.user)
  @item.destroy
  redirect "/users/#{current_user.id}"

end
