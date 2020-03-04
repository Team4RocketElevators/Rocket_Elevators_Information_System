class FormulairesdesoumissionController < ApplicationController
    def index
        @title = "Formulaire d'Estimation de Prix"
        @paeg_title = "Rocket Elevators - Formulaire d'Estimation de Prix"
    end
    def new
        @title = "Nouveau Formulaire d'Estimation de Prix"
        @page_title = "Rocket Elevators - Nouveau Formulaire d'Estimation de Prix"
    end
    def show

    end
end
