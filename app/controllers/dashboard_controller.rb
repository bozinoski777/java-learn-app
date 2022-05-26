class DashboardController < ApplicationController
    def show
        @reportcards = Reportcard.where(user_id: current_user)
        @materials = Material.all
    end
end
