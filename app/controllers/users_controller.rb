class UsersController < ApplicationController

get '/users/:id' do

    @user = User.find_by(:id => session[:user_id])
   
    # @currencies << Currency.find_by(:user_id => session[:user_id])
    @killer = Killer.find(1)
    @survivor = Survivor.find(1)
    
    erb :'/users/index'
end

get '/users/:id/edit' do
   @user = User.find_by(:id => session[:user_id])
    erb :'/users/edit'
end


patch '/users/:id/edit' do
    @user = User.find_by_id(session[:user_id])
    @user = User.update(:username => params[:username])
    
    @user.save
    redirect to "/users/#{@user.id}"
end

delete 'users/:id/delete' do
end


end