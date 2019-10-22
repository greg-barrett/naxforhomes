module ApplicationHelper
  def capify(string)
    text="<span class='cap-letter'>" + (string.slice!(0)) + "</span>" + string
    text.html_safe
  end

end
