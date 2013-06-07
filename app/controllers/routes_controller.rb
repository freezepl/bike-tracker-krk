class RoutesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def save_route
    @route = Route.new(:uuid => params[:uuid], :locations => params[:locations])
    if @route.save
      render :nothing => true, :status => :ok
    else
      render :nothing => true, :status => :unprocessable_entity
    end
  end

  def index
    @routes = Route.all
  end

  def map
    @routes = Route.all
  end

  def show_xml
    @routes = Route.all
  end
end
