  def date_and_time(datetime)
    unless datetime == nil
      datetime.strftime("%B-%d-%Y at %H:%M:%S")
    end
  end