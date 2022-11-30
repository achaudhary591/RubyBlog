module ApplicationHelper

  def profile_image(user, options = { size: 80})
    url = "https://picsum.photos/200"
    image_tag(url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

end
