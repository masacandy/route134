class Web::RoutesController < Web::BaseController
  HOLIDAYS = [0, 6]

  def index
    redirect_to route_path(find_route)
  end

  def show
    @route = Route.find(params[:id])
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
    Gmaps4rails.build_markers(@route.route_spots) do |route_spot, maker|
      maker.lat route_spot.spot.latitude.to_f
      maker.lng route_spot.spot.longtitude.to_f
      maker.picture({
        url: ActionController::Base.helpers.asset_path("markers/#{route_spot.sort}.png"),
        width: 32,
        height: 32
      })
    end
  end
end
