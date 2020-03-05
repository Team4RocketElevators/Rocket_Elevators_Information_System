class SubmissionformsController < ApplicationController
    def index
        @title = "Price Estimation Form"
        @paeg_title = "Rocket Elevators - Price Estimation Form"
    end
    def new
        @title = "New Price Estimation Form"
        @page_title = "Rocket Elevators - New Price Estimation Form"
    end
    def create
        #render plain: params[:form].inspect
        @form = Form.new(form_params)

        @form.save

        #redirect_to @form
        render plain: form_params.inspect
    end
    def show

    end

    private def form_params
        params.require(:form).permit(:buildingSelect)
    end
end
