class ChampionsController < ApplicationController

    def index
        @champions = Champion.all
    end

    def show
        @champions = Champion.find(params[:id])
    end
end
