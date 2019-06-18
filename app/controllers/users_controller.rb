class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update]
    
    def index
    end

    def new
        @user = User.new
    end

    def show
        @account = Account.all
        if session[:user_id] != @user.id
            redirect_to '/login'
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:username] = @user.username
            redirect_to @user
        else
            flash[:warning] = "Enter Username and Password (6 or more characters)"
            redirect_to new_user_path
        end
    end
    
    def edit
    end

    def update
        if @user.authenticate(params[:user][:current_password])
            @user.update(password: params[:user][:password])
            redirect_to @user
        else
            flash[:check] = "Provide a valid password"
            @user.errors.add :current_password
            render :edit
        end
    end

    def destroy
    end



    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def get_user
        @user = User.find(params[:id])
    end
end