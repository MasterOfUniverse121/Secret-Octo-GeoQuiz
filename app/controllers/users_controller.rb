class UsersController < ApplicationController
	
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
		@quizzes = Quiz.all
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.bio = params[:bio]
    @user.pic = params[:pic]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
      redirect_to "/users/#{ @user.id }", :notice => "User saved"
    else
			redirect_to '/new', :notice => @user.errors.full_messages.join(' ')
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
		if @user.name != session['username']
			redirect_to "/users", :notice => "Deal with it."
		end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.bio = params[:bio]
    @user.pic = params[:pic]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
			redirect_to "/users/#{ @user.id }", :notice => "User saved"
    else
			redirect_to'/edit', :notice => @user.errors.full_messages.join(' ')
    end
  end


	def destroy
	   @user = User.find_by(id: params[:id])
		if @user.name != session['username']
			redirect_to "/users", :notice => "Deal with it."
		else
		@user.destroy
		reset_session
		redirect_to'/sessions/out', :notice => "User deleted."
		end
	end
end
