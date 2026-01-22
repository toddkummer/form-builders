module ApplicationHelper
  # override the date_field helper to generate the html for the date picker
  #
  # <div data-controller="datepicker">
  #   <input data-datepicker-target="input" type="text" name="foobar" value="2022-03-23"/>
  #   <i class="fa-regular fa-calendar" data-datepicker-target="toggle"></i>
  # </div>
  def date_field(object_name, method, options = {})
  end
end
