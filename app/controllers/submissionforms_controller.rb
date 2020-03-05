require 'securerandom'

class SubmissionformsController < ApplicationController
    def index
        @title = "Price Estimation Form"
        @page_title = "Rocket Elevators - Price Estimation Form"
    end
    def show
        @form = Test.find(params[:id])
    end
    def new
        @title = "New Price Estimation Form"
        @page_title = "Rocket Elevators - New Price Estimation Form"
    end
    def create
        #render plain: params[:form].inspect
        @form = Test.new(form_params)

        @form.save

        redirect_to "/submissionforms/" + @form.id.to_s
    end

    private def form_params
        params.require(:form).permit(:building, :priceUnit)
    end
end
