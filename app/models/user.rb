class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness.to_i > self.nausea.to_i
      "happy"
    else
      "sad"
    end
  end


end
