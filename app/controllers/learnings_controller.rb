class LearningsController < ApplicationController
  def index
    @courses = Course.all
  end
end
