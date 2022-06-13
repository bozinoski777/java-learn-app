class FlashcardsController < ApplicationController

    def show
        @flashcard = Flashcard.find(params[:id])
        @freport = Freport.new
        @correctFlash = Freport.where(:is_known => "true", :user_id => current_user.id).count
        @totalFlash = Flashcard.count
        @ratioFl = (@correctFlash / @totalFlash.to_f) * 100
    end

end
