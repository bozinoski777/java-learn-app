class FreportsController < ApplicationController

    def new
        @freport = Freport.new
    end

    def create
        @freport = Freport.new(freport_params)
        if Freport.where(:flashcards_id => freport_params[:flashcards_id], :user_id => current_user.id).exists?
            @freport = Freport.where(:flashcards_id => freport_params[:flashcards_id], :user_id => current_user.id)
            @freport.update(freport_params)
        else
            @freport.save
        end

        if freport_params[:flashcards_id].to_i < Flashcard.count
            redirect_to "/flashcards/#{freport_params[:flashcards_id].to_i + 1}"
        else
            redirect_to "/flashcards/#{Freport.where(:is_known => "false").first.id - 1}"
        end
    end

    private

    def freport_params
    params.require(:freport).permit(:id, :material_confidece, :is_known, :flashcards_id, :user_id)
    end
end
