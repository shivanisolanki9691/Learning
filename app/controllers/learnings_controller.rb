class LearningsController < ApplicationController
   before_action :set_user, only:[:show,:edit,:update,:destroy ]
  def index
    @courses = Course.all
    @faqs = Faq.all
    @instructors = Instructor.all
    @recommendations = Recommendation.all
    @contacts = Contact.all
    @registrations = Registration.all
    @registration = Registration.new 
  end


  def create
    registration = Registration.new(registration_params)

    if registration.save
      render json: @registration
      SendMailer.send_email(registration.email, registration).deliver_now
    else
      render :index
    end
  end

  def show
   
  end

  private
  def set_user
     @registration = Registration.find(params[:id])
  end

    def registration_params
      params.require(:registration).permit(:your_name, :email, :phone_number, :course_of_interest, :message)
    end
end
