class DashboardController < ApplicationController
    def show
        @mreports = Mreport.where(user_id: current_user)
        @freports = Freport.where(user_id: current_user)
        @flashcards = Flashcard.all
        @materials = Material.all
        @notReviewedMaterial = @materials.count - @mreports.count
        @reviewedMaterial = @mreports.count
        @veryConfident = Mreport.where(material_confidece: 100).count
        @somewhatConfident = Mreport.where(material_confidece: 75).count
        @littleConfident = Mreport.where(material_confidece: 25).count
        @notConfident = Mreport.where(material_confidece: 0).count
    end
end
