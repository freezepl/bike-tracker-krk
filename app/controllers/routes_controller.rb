class RoutesController < ApplicationController
  def save_route
    @route = Route.new(:uuid => params[:uuid], :locations => params[:locations])
    if @route.save
      render :nothing => true, :status => :ok
    else
      render :nothing => true, :status => :unprocessable_entity
    end
  end
end
