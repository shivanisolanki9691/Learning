class RegistrationController < ApplicationController
	skip_before_action :verify_authenticity_token
    before_action :set_registration, only: [:show]

    def index
      @registration = Registration.all
    end

    def create
      registration = Registration.new(registration_params)
      if registration.save
        SendMailer.send_email(registration.email, registration).deliver_now
        redirect_to root_path, notice: 'Registration successful. Thank you!'
      else
      	render :index
      end

    end

    private

    def set_registration
      @registration = Registration.find(params[:id])
    end

    def registration_params
      params.require(:registration).permit(:your_name, :email, :phone_number, :course_of_interest, :message)
    end
end

