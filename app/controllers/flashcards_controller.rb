class FlashcardsController < ApplicationController

    def show
        @flashcard = Flashcard.find(params[:id])
        @freport = Freport.new
    end

end
