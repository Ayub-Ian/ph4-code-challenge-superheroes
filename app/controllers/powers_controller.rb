class PowersController < ApplicationController
    # GET /powers
    def index
        render json: Power.all, status: :ok
    end
end
