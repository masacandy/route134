module Admin
  class SpotsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Spot.
    #     page(params[:page]).
    #     per(10)
    # end

    def create
      super
    rescue => e
      logger.error e
      flash[:error] = e
      redirect_to new_admin_spot_path
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Spot.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
