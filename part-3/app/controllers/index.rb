get '/' do 
  @items = Item.where('starts_at < ? AND ends_at > ?', DateTime.now, DateTime.now ).order(:starts_at)
  erb :'index'
end

get '/not_authorized' do
  erb :not_authorized
end


# Event.where('starts_at > ?', DateTime.now).order(:starts_at)


# Comment.find(:all, :conditions =>["date(created_at) BETWEEN ? AND ? ", '2011-11-01','2011-11-15'])

# 'start_date < ? AND end_date > ?', @today,  @today

# MessPrice.where('start_date < ? AND end_date > ?', @today,  @today)