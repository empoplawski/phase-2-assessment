  def date_and_time(datetime)
    unless datetime == nil
      datetime.strftime("%B-%d-%Y at %I:%M:%P")
    end
  end