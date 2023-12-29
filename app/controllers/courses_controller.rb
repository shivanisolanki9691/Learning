
class CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @course = Course.new(course_params)
    if @course.save
       render json: {messages: " Course successfully created"}, status: :ok
    else
      render json: { messages: "course not create"  }, status: :unprocessable_entity
    end
  end

  def show 
    @course =Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:trainer_id, :mode_of_training, :course_name)
  end
end
