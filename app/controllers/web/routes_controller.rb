class Web::RoutesController < Web::BaseController
  HOLIDAYS = [0, 6]

  def index
    route = find_route

    redirect_to route_path(route.id)
  end

  def show
    route = Route.find(params[:id])

    @spots = route.spots
    @hash = create_markers
  end

  private

  def find_route
    Route.find_by(
      situation: params[:situation],
      transportation: params[:transportation],
      activity_time: params[:activity_time]
    )
  end

  def create_markers
    Gmaps4rails.build_markers(@spots) do |spot, maker|
      maker.lat spot.latitude.to_f
      maker.lng spot.longtitude.to_f
    end
  end
end
