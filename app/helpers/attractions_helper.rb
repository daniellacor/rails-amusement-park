module AttractionsHelper
  def admin_attraction_link
    user = User.find(session[:user_id])
    if user.admin
      link_to "New Attraction", new_attraction_path
    end
  end

  def admin_attraction_show(attraction)
    user = User.find(session[:user_id])
    if user.admin
      link_to "Show #{attraction.name}", attraction_path(attraction)
    else
      button_to "Go on #{attraction.name}", attraction_path(attraction)
    end
  end

  def admin_edit_attraction
    user = User.find(session[:user_id])
    if user.admin
      link_to "Edit Attraction", edit_attraction_path(@attraction)
    end
  end
end
