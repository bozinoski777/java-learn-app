class FlashcardsController < ApplicationController

    def show
        @flashcard = Flashcard.find(params[:id])
        @freport = Freport.new
    end

    def new
        @freport = Freport.new
    end
  
    def create
        @freport = Freport.new(freport_params)
        @freport.save
        if @freport.save
            redirect_to materials_path
        else
            render :new
        end
    end

    private

    def freport_params
    params.require(:mreport).permit(:material_confidece, :is_known, :material_id, :user_id)
    end

end
