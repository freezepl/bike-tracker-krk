class MapController < ApplicationController
  def index
    @routes = Route.all
  end
end
