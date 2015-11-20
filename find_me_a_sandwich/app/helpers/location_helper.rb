module LocationHelper
  def format_address(location)
    content_tag(:address) do
      content_tag(:span, location.street) + tag(:br) +
        content_tag(:span, "#{location.city}, #{location.state}  #{location.zip}")
    end
  end

  def format_user_location(location)
    return nil if location.nil?

    content_tag(:address) do
      content_tag(:span, "#{location.city}, #{location.state}  #{location.zip}")
    end
  end
end