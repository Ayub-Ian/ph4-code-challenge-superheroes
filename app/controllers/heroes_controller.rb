class HeroesController < ApplicationController
    # GET /heroes
    def index
        render json: Hero.all, status: :ok
    end
end