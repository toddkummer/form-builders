module ApplicationHelper
  # build a helper to generate the date picker input field
  #
  # <div data-controller="datepicker">
  #   <input data-datepicker-target="input" type="text" name="foobar" value="2022-03-23"/>
  #   <i class="fa-regular fa-calendar" data-datepicker-target="toggle"></i>
  # </div>
  def date_picker(form, method, options = {})
    tag.div(data: { controller: "datepicker" }) do
      concat form.text_field(method, options.merge(data: { datepicker_target: "input" }))
      concat tag.i(class: "fa-regular fa-calendar", data: { datepicker_target: "toggle" })
    end
  end
end
