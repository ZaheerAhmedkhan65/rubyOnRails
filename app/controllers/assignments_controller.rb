class AssignmentsController < ApplicationController

    def index
     @assignments = Assignment.all
    end

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = Assignment.new(assignment_params)
        if @assignment.save
            redirect_to assignments_path
        else
            render :new
        end
    end

    def show
        @assignment = Assignment.find(params[:id])
    end

    def edit    
        @assignment = Assignment.find(params[:id])  
    end

    def update
        @assignment = Assignment.find(params[:id])
        if @assignment.update(assignment_params)
            redirect_to assignments_path
        else
            render :edit
        end
    end 

    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        redirect_to assignments_path    
    end

    private
    def assignment_params
        params.require(:assignment).permit(:assignment_title, :due_date,:assignment_week,:assignment_topic, :related_links, :assignment_description)
    end
    
end