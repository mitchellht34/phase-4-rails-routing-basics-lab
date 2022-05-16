class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        # render json: students.sort_by {|student| -student.grade }
        # render json: students.sort_by {|student| student.grade }.reverse
        render json: students.order(grade: :desc)
    end

    def highest_grade
       students = Student.all
    #    render json: students.order(grade: :desc).limit(1)[0]
       render json: students.order(grade: :desc).first
    end

end
