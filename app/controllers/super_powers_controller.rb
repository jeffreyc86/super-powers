class SuperPowersController < ApplicationController

    def index
        @super_powers = SuperPower.all
    end

    def show
        @super_power = SuperPower.find(params[:id])
    end

    def new
        @super_power = SuperPower.new
    end

    def create
        @super_power = SuperPower.new(params.require(:super_power).permit(:rating, :reason))
        @super_power.save
        redirect_to super_power_path(@super_power)
    end

    def edit
        @super_power = SuperPower.find(params[:id])
    end

    def update
        @super_power = SuperPower.find(params[:id])
        @super_power.update(params.require(:super_power).permit(:rating, :reason))
        redirect_to super_power_path(@super_power)
    end

end
