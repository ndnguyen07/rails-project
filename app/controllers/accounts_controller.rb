class AccountsController < ApplicationController
    before_action :find_account, only: [:show, :update]

    def index
        @accounts = Account.all
    end

    def new
        @account = Account.new
    end

    def show
    end

    def create
        @account = Account.find_by(user_id: session[:user_id])
        redirect_to @user
    end

    def update
        @account.update(set_params)
        redirect_to current_user
    end

    private

    def set_params
        params.require(:account).permit(:name, :summoner_level)
    end

    def find_account
        @account = Account.find(params[:id])
    end
end
