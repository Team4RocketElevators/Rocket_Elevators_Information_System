class EmployeesSectionsController < ApplicationController
    before_action :set_employees_section, only: [:show, :edit, :update, :destroy]
  
    # GET /employees_sections
    # GET /employees_sections.json
    def index
      @employees_sections = EmployeesSection.all
    end
  
    # GET /employees_sections/1
    # GET /employees_sections/1.json
    def show
    end
  
    # GET /employees_sections/new
    def new
      @employees_section = EmployeesSection.new
    end
  
    # GET /employees_sections/1/edit
    def edit
    end
  
    # POST /employees_sections
    # POST /employees_sections.json
    def create
      @employees_section = EmployeesSection.new(employees_section_params)
  
      respond_to do |format|
        if @employees_section.save
          format.html { redirect_to @employees_section, notice: 'Employees section was successfully created.' }
          format.json { render :show, status: :created, location: @employees_section }
        else
          format.html { render :new }
          format.json { render json: @employees_section.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /employees_sections/1
    # PATCH/PUT /employees_sections/1.json
    def update
      respond_to do |format|
        if @employees_section.update(employees_section_params)
          format.html { redirect_to @employees_section, notice: 'Employees section was successfully updated.' }
          format.json { render :show, status: :ok, location: @employees_section }
        else
          format.html { render :edit }
          format.json { render json: @employees_section.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /employees_sections/1
    # DELETE /employees_sections/1.json
    def destroy
      @employees_section.destroy
      respond_to do |format|
        format.html { redirect_to employees_sections_url, notice: 'Employees section was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_employees_section
        @employees_section = EmployeesSection.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def employees_section_params
        params.require(:employees_section).permit(:title, :body)
      end
  end
  