class BuildsController < ApplicationController
    before_action :find_build, only: [:show, :edit, :update, :destroy]
    
    def index
        @builds = Build.where(user_id: session[:user_id])
    end

    def show
    end

    def new
        @build = Build.new
    end

    def create
        @build = Build.create(user_id: session[:user_id], runes: params[:build][:runes], description: params[:build][:description], items: params[:build][:items], name: params[:build][:name])
        redirect_to builds_path
    end

    def edit
    end

    def update
        @build.update(find_params)
        redirect_to @build
    end

    def destroy
        @build.destroy
        redirect_to builds_path
    end


    private

    def find_params
        params.require(:build).permit(:runes, :items, :description, :user_id, :name)
    end

    def find_build
        @build = Build.find(params[:id])
    end

end
