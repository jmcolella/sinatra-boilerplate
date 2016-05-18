get '/login' do
  erb :'/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Email or password was incorrect.", "Please enter again."]
    erb :'/login'
  end
end

get '/logout' do
  session.clear

  redirect '/'
end