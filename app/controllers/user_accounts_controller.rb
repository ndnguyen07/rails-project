class UserAccountsController < ApplicationController

    def create
        if UserAccount.where(user_id: session[:user_id], account_id: params[:account_id]).empty?
            UserAccount.create(user_id: current_user.id, account_id: params[:account_id])
            @account = Account.find(params[:account_id])
            redirect_to current_user
        else 
            flash[:message] = "Already saved!"
            redirect_to "/accounts/#{params[:account_id]}"
        end
    end

    def destroy
        @user_account = UserAccount.where(user_id: params[:id], account_id: params[:account_id])
        @user_account[0].delete
        redirect_to current_user
    end

end
