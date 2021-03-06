module Admin
  class RoutesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Route.
    #     page(params[:page]).
    #     per(10)
    # end

    def create
      super
    rescue => e
      logger.error e
      flash[:error] = e
      redirect_to new_admin_route_path
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Route.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
