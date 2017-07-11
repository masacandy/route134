require "administrate/field/base"
require 'irb'

class EnumField < Administrate::Field::Base
  def to_s
    data.to_s
  end

  def choices(form_builder)
    form_builder.object.class.public_send(attribute.to_s.pluralize).map do |k, v|
      [I18n.t("routes.#{attribute.to_s.pluralize}.#{k}"), k]
    end
  end
end
