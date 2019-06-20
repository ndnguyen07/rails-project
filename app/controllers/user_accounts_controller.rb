class UserAccountsController < ApplicationController

    def create
        UserAccount.create(user_id: current_user.id, account_id: params[:account_id])
        @account = Account.find(params[:account_id])
        redirect_to current_user
    end
end
