class MapController < ApplicationController
  def index
    @routes = Route.all
    @locations = @routes.map(&:locations).reduce(&:+)
    @coordinates = @locations.map { |location| location[1..2] }
  end
end
