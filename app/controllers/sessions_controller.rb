class SessionsController < ApplicationController
  def new
  end
  
  def create
    u = User.find_by_name(params['username'])
  if u && u.authenticate(params['password'])
    session['username'] = params['username']
    redirect_to '/show'
   else
     redirect_to '/sessions/wrong'
   end
  end
  
  def destroy
    reset_session
    redirect_to'/sessions/out'
  end
end