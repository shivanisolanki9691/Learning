class FaqsController < ApplicationController
  def index
    @faqs = Faq.all
  end
	# def index
	# 	@faqs = Faq.all
	# end
	# def create
	# 	faq = Faq.new(course_params)
	# 	if faq.save
	# 		render json: { message: 'Course created successfully', faq: faq }, status: :created
	#     else
	#         render json: { errors: course.errors.full_messages }, status: :unprocessable_entity
	#     end
	# end

	# private
	# def set_faq
	# 	@faq = Faq.find(params[:id])
	# end

	# def course_params
	# 	params.require(:faq).permit(:course_name, :description, :price, :discounted_price, :live_classes, :quizzes, :projects, :doubt_support, :interview_questions_covered, :lifetime_access, :image_url, :image)
	# end
end
