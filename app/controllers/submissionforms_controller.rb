require 'securerandom'

class SubmissionformsController < ApplicationController
    def index
        @forms = Form.all
        @title = "Price Estimation Form"
        @page_title = "Rocket Elevators - Price Estimation Form"
    end
    def show
        @form = Form.find(params[:id])
    end
    def new
        @title = "New Price Estimation Form"
        @page_title = "Rocket Elevators - New Price Estimation Form"
    end
    def create
        @form = Form.new(form_params)

        @form.save

        redirect_to "/submissionforms/" + @form.id.to_s
    end

    private def form_params
        params.require(:form).permit(:building, :appartmentsNbrRES, :floorsNbrRES, :floorsNbrCOM, :floorsNbrCOR, :basementsNbrRES, :basementsNbrCOM, :basementsNbrCOR, :seperateBusinessesNbrCOM, :parkingsNbrCOM, :parkingsNbrCOR, :elevatorsNbrCOM, :seperateRentalCompaniesNbrCOR, :occupantsPerFloorCOR, :occupantsPerFloor, :nbrFloors, :nbrBasements, :availableParkingSpaces, :seperateBusinesses,  :busyHours,  :recommendedShafts,  :quality,  :priceUnit,  :costInstallations,  :costTotal)
    end
end
