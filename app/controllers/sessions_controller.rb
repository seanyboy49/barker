# login
get '/login' do
end

post '/login' do
  puts "Inside Post Login"
  @user = User.find_by(email: params[:user][:email])
  p params
  p "@user: "
  p @user

  p "@user.password: "
  p @user.password
  p 'test params[:password]: '
  # p @user.authenticate(params[:password])

  # p 'params[:password]'
  # p params[:password]

  # p '@user.authenticate(nil)'
  # p @user.authenticate(nil)


  # p @user && @user.authenticate(params[:user][:password])
  # p (@user && @user.authenticate(params[:user][:password])) == true
  if (@user && @user.authenticate(params[:user][:password])) == true
    puts "INSIDE IF STATEMENT"
    session[:user_id] = @user.id
    redirect '/'
  else
    puts "INSIDE ELSE STATEMENT"
    @errors = ["Sorry. Password doesn't match. "]
    redirect '/'
  end
end

# logout
get '/logout' do
end

