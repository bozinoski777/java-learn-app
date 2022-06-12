class MreportsController < ApplicationController
    def new
        @mreport = Mreport.new
    end

    def create
    @mreport = Mreport.new(mreport_params)
        if Mreport.where(:material_id => mreport_params[:material_id], :user_id => current_user.id).exists?
            @mreport = Mreport.where(:material_id => mreport_params[:material_id], :user_id => current_user.id)
            @mreport.update(mreport_params)
        else
            @mreport.save
        end
    end

    private

    def mreport_params
    params.require(:mreport).permit(:id, :material_confidece, :is_known, :material_id, :user_id)
    end
end
