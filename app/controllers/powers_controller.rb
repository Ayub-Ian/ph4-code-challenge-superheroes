class PowersController < ApplicationController
    # GET /powers
    def index
        render json: Power.all, status: :ok
    end

    # GET /powers/:id
    def show
        power = Power.find_by(id: params[:id])
        if power
            render json: power, status: :ok
        else
            render json: {
                error: "Power not found"
              }, status: :not_found
        end
    end
end
