class DashboardController < ApplicationController
    def show
        @reportcards = Reportcard.where(user_id: current_user)
        @flashcards = Flashcard.all
        @materials = Material.all
        @notReviewedMaterial = @materials.count - @reportcards.count
        @reviewedMaterial = @reportcards.count
        @veryConfident = Reportcard.where(material_confidece: 100).count
        @somewhatConfident = Reportcard.where(material_confidece: 75).count
        @littleConfident = Reportcard.where(material_confidece: 25).count
        @notConfident = Reportcard.where(material_confidece: 0).count
    end
end
