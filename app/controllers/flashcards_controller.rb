class FlashcardsController < ApplicationController

    def show
        
        @flashcard = Flashcard.find(params[:id])

        @reportcard = Reportcard.new
    end

    def create
        @reportcard = Reportcard.new

        if Reportcard.where(:material_id => params[:flashcard_id]).exists?
            @reportcard = Reportcard.where(:id => params[:id])
            @reportcard.update!(params)
        else
            @reportcard.save
        end
    

    end


    private

    # def reportcard_params
    #   params.require(:reportcard).permit(:is_known, :user_id)
    # end

end
