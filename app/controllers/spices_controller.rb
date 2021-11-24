class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def create
        newSpice = Spice.create(spice_params)
        render json: newSpice, status: :created
    end

    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    def delete
        spice = Spice.find_by(id: params[:id])
        spice.destroy
    end


    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
