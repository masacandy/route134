class Web::RoutesController < Web::BaseController
  before_action :check_confiditon, only: %i[index]

  def index
    puts params
    @routes = Route.where(
      situation: params[:situation],
      transportation: params[:transportation],
      activity_time: params[:activity_time]
    )
  end

  def show
    @route = Route.find(params[:id])
    @hash = create_markers
  end

  private

  def check_confiditon
    raise 'condition params error' if invalid_condition
  end

  def invalid_condition
    invalid_transportation? || invalid_situation? || invalid_activity_time?
  end

  def invalid_transportation?
    return false if params[:transportation].nil?
    !Route.transportations.values.include?(params[:transportation].to_i)
  end

  def invalid_situation?
    return false if params[:situation].nil?
    !Route.situations.values.include?(params[:situation].to_i)
  end

  def invalid_activity_time?
    return false if params[:activity_time].nil?
    !Route.activity_times.values.include?(params[:activity_time].to_i)
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
