class Web::RoutesController < Web::BaseController
  def index
  end

  def show
    @route = Route.find(params[:id])
  end
end
