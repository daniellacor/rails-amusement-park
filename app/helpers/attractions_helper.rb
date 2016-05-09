module AttractionsHelper
  def admin_attraction_link
    user = User.find(session[:user_id])
    if user.admin
      link_to "New Attraction", new_attraction_path
    end
  end
end