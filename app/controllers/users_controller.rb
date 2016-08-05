# display all users
get '/users' do
end

#  form for creating new users
get '/users/new' do
end

# create a new user
post '/users' do
  p params

  p params[:user][:name]
  password = params[:user][:password]
  password2 = params[:user][:password_confirmation]
  @user = User.new(params[:user])
  if password == password2
    @user = User.new(params[:user])
    if @user.save
      # session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors
      erb :index
    end
  else
    @errors
    erb :index
  end
end

# display specific user
get '/users/:id' do
end

# form for editing a user
get 'users/:id/edit' do
end

# update a specific user
put '/users/:id' do
end

# delete a user
delete '/users/:id' do
end


