class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness.to_i > self.nausea.to_i
      "Happy"
    else
      "Sad"
    end
  end

  def take_ride
    @user = User.find(params[:id])
    user.tickets -= ride.tickets
    user.nausea -= ride.nausea_rating
    new_happiness -= user.happiness - ride.happiness_rating

  end


end
