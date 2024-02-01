class LearningsController < ApplicationController
  # before_action :set_course, only:[:show,:edit,:update,:destroy ]
  def index
    @courses = Course.all
    @faqs = Faq.all
    @instructors = Instructor.all
    @recommendations = Recommendation.all
  end
end
