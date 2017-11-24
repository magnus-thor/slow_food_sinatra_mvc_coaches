def to_underscore(string)
  string.titleize.gsub(' ', '').underscore
end

def order
  if session[:order_id]
    Order.find(session[:order_id])
  end
end

def pickup_time
  delivery_time = order.updated_at.in_time_zone('CET') + 30.minutes
  delivery_time.strftime('%H:%M')
end