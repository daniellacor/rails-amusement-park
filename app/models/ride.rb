class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
    @user.tickets -= @attraction.tickets
      # if @user.tickets < 0
      #   flash[:alert] = "You do not have enough tickets"
    @user.nausea -= @attraction.nausea_rating
    @user.happiness -= @attraction.happiness_rating
  end

end
