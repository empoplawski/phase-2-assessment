##create
post "/bids" do
  authenticate!
  @bid = Bid.new(params[:bid])

  if @bid.save
    redirect "/"
  else
    status 422
    @errors = @bid.errors.full_messages
    erb :"bids/new"
  end
end