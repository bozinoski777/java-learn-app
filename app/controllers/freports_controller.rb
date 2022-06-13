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

        sum_fcards = Flashcard.count
        if Freport.where(:user_id => current_user.id).count < sum_fcards
            redirect_to "/flashcards/#{freport_params[:flashcards_id].to_i + 1}"
        elsif Freport.where(:user_id => current_user.id, :is_known => "true").count == sum_fcards
            randomFcard = rand(1..sum_fcards)
            redirect_to"/flashcards/#{ randomFcard == freport_params[:flashcards_id].to_i ? rand(1..sum_fcards) : randomFcard}"
        else
            randomFcard = rand(1..sum_fcards)
                redirect_to "/flashcards/#{Freport.where(:is_known => "false", :user_id => current_user.id).last.flashcards_id}"
        end
    end

    private

    def freport_params
    params.require(:freport).permit(:id, :material_confidece, :is_known, :flashcards_id, :user_id)
    end
end
