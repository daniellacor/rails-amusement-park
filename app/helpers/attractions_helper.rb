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
      button_to "Go on #{attraction.name}", attraction_path(attraction), method: :get
    end 
  end

  def admin_edit_attraction
    @user = User.find(session[:user_id])
    if @user.admin
      link_to "Edit Attraction", edit_attraction_path(@attraction)
    else
      form_for @user do |f|
        hidden_field_tag('attraction_id', @attraction.id)
        f.submit "Go on #{@attraction.name}"
      end
    end
  end

  def go_on_attraction_link(attraction)
    @user = User.find(session[:user_id])
    if @user.admin == false
      link_to "Go on " + attraction.name, attraction_path(attraction)
    end
  end
end