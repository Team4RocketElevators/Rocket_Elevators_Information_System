class SubmissionformsController < ApplicationController
    def index
        @forms = Form.all
        @title = "Price Estimation Form"
        @page_title = "Rocket Elevators - Price Estimation Form"
    end
    def show
        @form = Form.find(params[:id])
        if (@form.name === "")
            @form.name = "Form #" + @form.id.to_s
        end
    end
    def new
        @form = Form.new
        @title = "New Price Estimation Form"
        @page_title = "Rocket Elevators - New Price Estimation Form"
    end
    def create
        @form = Form.new(form_params)

        if (@form.save)
            redirect_to "/submissionforms/" + @form.id.to_s
        else
            render "new"
        end
    end

    def edit
        @form = Form.find(params[:id])
        if (@form.name === "")
            @form.name = "Form #" + @form.id.to_s
        end
        @title = "Edit Price Estimation Form"
        @page_title = "Rocket Elevators - Edit Price Estimation Form"
    end

    def update
        @form = Form.find(params[:id])
        if (@form.name === "")
            @form.name = "Form #" + @form.id.to_s
        end
        if (@form.update(form_params))
            redirect_to "/submissionforms/" + @form.id.to_s
        else
            render "edit"
        end
    end

    def destroy
        @form = Form.find(params[:id])

        @form.destroy
        redirect_to "/submissionforms/"
    end

    private def form_params
        params.require(:form).permit(:name, :building, :appartmentsNbrRES, :floorsNbrRES, :floorsNbrCOM, :floorsNbrCOR, :basementsNbrRES, :basementsNbrCOM, :basementsNbrCOR, :seperateBusinessesNbrCOM, :parkingsNbrCOM, :parkingsNbrCOR, :elevatorsNbrCOM, :seperateRentalCompaniesNbrCOR, :occupantsPerFloorCOR, :occupantsPerFloor, :nbrFloors, :nbrBasements, :availableParkingSpaces, :seperateBusinesses, :busyHours, :recommendedShafts, :quality, :priceUnit, :costInstallations, :costTotal, :timestamps)
    end
end
