class MapController < ApplicationController
  def index
    @routes = Route.all
    @locations = @routes.map(&:locations).reduce(&:+)
  end
end
