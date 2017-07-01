class Web::RoutesController < Web::BaseController
  def index
  end

  def show
    route = Route.find(params[:id])
    @spots = route.spots
  end
end
