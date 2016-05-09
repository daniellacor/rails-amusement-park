class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
    @user = User.find(params[:id])
    user.tickets -= attraction.tickets
    user.nausea -= attraction.nausea_rating
    user.happiness -= attraction.happiness_rating
  end
end
