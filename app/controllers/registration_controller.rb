class RegistrationController < ApplicationController
	skip_before_action :verify_authenticity_token
  before_action :set_user, only:[:show,:edit,:update,:destroy ]

	def index
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

  # def update
  #   if @registration.update(registration_params)
  #     # render json: @user , status: :ok
  #     redirect_to registration_path, notice: "User was successfully updated." 
  #   end
  # end


  # def destroy
  #   if @registration.destroy
  #     # render json: @user
  #     redirect_to registration_path, notice: "User was successfully destroyed." 
  #   end
  # end

  private
  def set_user
     @registration = Registration.find(params[:id])
  end

    def registration_params
      params.require(:registration).permit(:your_name, :email, :phone_number, :course_of_interest, :message)
    end
end


