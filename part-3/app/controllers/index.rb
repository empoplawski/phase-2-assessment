get '/' do 
  @items = Item.where('starts_at < ? AND ends_at > ?', DateTime.now, DateTime.now ).order(:starts_at)
  erb :'index'
end

get '/not_authorized' do
  erb :not_authorized
end

