require "administrate/base_dashboard"

class SpotDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    route_spots: Field::HasMany,
    routes: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::String,
    longtitude: Field::String.with_options(searchable: false),
    latitude: Field::String.with_options(searchable: false),
    phone_number: Field::String,
    opens: Field::DateTime,
    close: Field::DateTime,
    api_url: Field::String,
    address: Field::String,
    zipcode: Field::String,
    official_url: Field::String,
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
    :route_spots,
    :routes,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :route_spots,
    :routes,
    :id,
    :name,
    :description,
    :longtitude,
    :latitude,
    :phone_number,
    :opens,
    :close,
    :api_url,
    :address,
    :zipcode,
    :official_url,
    :active,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :route_spots,
    :routes,
    :name,
    :description,
    :longtitude,
    :latitude,
    :phone_number,
    :opens,
    :close,
    :api_url,
    :address,
    :zipcode,
    :official_url,
    :active,
  ].freeze

  # Overwrite this method to customize how spots are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(spot)
  #   "Spot ##{spot.id}"
  # end
end
