class EnController < ApplicationController
    def create
        @lead = Lead.new(lead_params)

        @lead.save
    end

    private def lead_params
        params.require(:lead).permit(:FullNameOfTheContact, :CompanyName, :EMail, :Phone, :ProjectName, :ProjecDescription, :DepartmentInChargeOfTheElevators, :Message, :AttachedFile)
    end
end
