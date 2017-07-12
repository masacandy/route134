require "administrate/base_dashboard"

class RouteSpotDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    route: Field::BelongsTo,
    spot: Field::BelongsTo,
    id: Field::Number,
    sort: Field::Number,
    moving_description: Field::String,
    active: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :route,
    :spot,
    :sort,
    :moving_description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :route,
    :spot,
    :id,
    :sort,
    :moving_description,
    :active,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :route,
    :spot,
    :sort,
    :moving_description,
    :active,
  ].freeze

  # Overwrite this method to customize how route spots are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(route_spot)
    "RouteSpot ##{route_spot.route.title}"
  end
end
