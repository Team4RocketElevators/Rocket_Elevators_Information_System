class EmployeeController < ApplicationController
    before_action :authenticate_employee!

    employee_signed_in?

    current_employee

    employee_session
end
