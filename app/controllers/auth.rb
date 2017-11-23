class SlowFoodApp
  get '/' do
    @products = Product.all
    erb :welcome
  end

  get '/login' do

  end

  get '/signup' do
    erb :signup
  end

  get '/users' do
    @users = User.all
    erb :users_index
  end

  post '/register' do
    user_params = params['user']
    user = User.new(user_params)
    if user.save
      redirect '/', notice: "Thank you for signing up #{user.name}"
    else
      error_message = ''
      user.errors.full_messages.each {|message| error_message += message + ' '}
      redirect '/signup', notice: error_message
    end

  end
end





