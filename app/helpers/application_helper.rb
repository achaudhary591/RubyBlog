module ApplicationHelper

  def gravatar_for(user, options = { size: 80})
    url = "https://picsum.photos/200"
    image_tag(url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

end
