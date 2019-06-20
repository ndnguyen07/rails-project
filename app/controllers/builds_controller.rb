class BuildsController < ApplicationController
    before_action :find_build, only: [:show, :edit, :update, :destroy]

    def index
        @builds = Build.all
    end

    def show
        if session[:user_id] != @user.id
            redirect_to '/login'
        end
    end

    def new
        @build = Build.new
    end

    def create
        @build = Build.create(find_params)
        redirect_to @build
    end

    def edit
    end

    def update
        @build.update(find_params)
        redirect_to @build
    end

    def destroy
        @build.destroy
        redirect_to current_user_path
    end


    private

    def find_params
        params.require(:build).permit(:runes, :items, :description)
    end

    def find_build
        @build = Build.find(params[:id])
    end

end
