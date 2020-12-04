class Staff::TopController < ApplicationController
  def index
    puts "controller is #{params[:controller]}"
  end
end
