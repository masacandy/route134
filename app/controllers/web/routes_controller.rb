class Web::RoutesController < Web::BaseController
  def index;end

  def show
    route = Route.find(params[:id])

    @spots = route.spots
    @hash = create_markers
  end

  private

  def create_markers
    Gmaps4rails.build_markers(@spots) do |spot, maker|
      maker.lat spot.latitude.to_f
      maker.lng spot.longtitude.to_f
    end
  end
end
