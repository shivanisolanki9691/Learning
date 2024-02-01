class CoursesController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_course, only:[:show,:edit,:update,:destroy ]
	def index
		@courses = Course.all
    end
	def create
		course = Course.new(course_params)
		if course.save
			render json: { message: 'Course created successfully', course: course }, status: :created
	    else
	        render json: { errors: course.errors.full_messages }, status: :unprocessable_entity
	    end
	end

	private
	def set_course
		@course = Course.find(params[:id])
    end

	def course_params
		params.require(:course).permit(:course_name, :description, :price, :discounted_price, :live_classes, :quizzes, :projects, :doubt_support, :interview_questions_covered, :lifetime_access, :image_url, :image)
	end
end
