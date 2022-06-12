class freportsController < ApplicationController

    def new
        @freport = Freport.new
    end

    def create
        @freport = Freport.new(freport_params)
        if Freport.where(:material_id => freport_params[:material_id], :user_id => current_user.id).exists?
            @freport = Freport.where(:material_id => freport_params[:material_id], :user_id => current_user.id)
            @freport.update(freport_params)
        else
            @freport.save
        end
    end

    private

    def freport_params
    params.require(:freport).permit(:id, :material_confidece, :is_known, :material_id, :user_id)
    end
end
