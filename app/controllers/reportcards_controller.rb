class ReportcardsController < ApplicationController

    def new
      @reportcard = Reportcard.new
    end

    def create
      @reportcard = Reportcard.new(reportcard_params.except(:info_type))
      if reportcard_params[:info_type] == "fact"
        if current_user.id == reportcard_params[:user_id].to_i && Reportcard.where(:material_id => reportcard_params[:material_id]).exists? && !reportcard_params[:material_confidece].nil?
          @reportcard = Reportcard.where(:material_id => reportcard_params[:material_id] && reportcard_params[:material_confidece].nil?)
          @reportcard.update(reportcard_params.except(:info_type))
        else
          @reportcard.save!
        end
      elsif reportcard_params[:info_type] == "flashcard"
        if current_user.id == reportcard_params[:user_id].to_i && Reportcard.where(:material_id => reportcard_params[:material_id]).exists? && reportcard_params[:material_confidece].nil?
          @reportcard = Reportcard.where(:material_id => reportcard_params[:material_id] && reportcard_params[:material_confidece].nil?)
          @reportcard.update(reportcard_params.except(:info_type))
        else
          @reportcard.save!
        end
      end
    end

    private

    def reportcard_params
      params.require(:reportcard).permit(:id, :material_confidece, :is_known, :material_id, :user_id, :info_type)
    end

end
