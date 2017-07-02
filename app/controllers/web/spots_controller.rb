class Web::SpotsController < Web::BaseController
    before_action :find_spot, only: %i(show)

    def show;end

    private

    def find_spot
      @spot = Spot.find(params[:id])
    end
end
