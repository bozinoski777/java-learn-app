class ReportcardsController < ApplicationController

    def new
      @reportcard = Reportcard.new
    end

    def create
      @reportcard = Reportcard.new(reportcard_params)
      
      if Reportcard.find(reportcard_params[:material_id])
        @reportcard = Reportcard.find(reportcard_params[:material_id])
        @reportcard.update(reportcard_params)
      else
        @reportcard.save
      end

      # if @reportcard.save
      #   redirect_to materials_path
      # else
      #   render :new
      # end
    end

    private

    def reportcard_params
      params.require(:reportcard).permit(:material_confidece, :is_known, :material_id, :user_id)
    end

end
