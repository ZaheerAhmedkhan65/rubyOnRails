class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end
    
    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to students_path , notice:"Student added successfully!"
        else
              
            render :new , notice:"There is an error in creating Student!"
        end
    end

    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to students_path , notice:"Student details has been updated successfully!"
        else
            render :edit
        end
    end

    def show
        @student = Student.find(params[:id])
    end 

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path ,notice:"Student has been deleted!"
        
    end

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :personal_email, :repository_link, :page_link, :phone_number)
    end

end
