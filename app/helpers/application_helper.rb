module ApplicationHelper
  def field_class(resource, field_name)
    if !resource.errors[field_name].blank?
      return "field-with-errors"
    else
      return ""
    end
  end
end
