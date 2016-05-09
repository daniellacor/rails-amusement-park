class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  validates_presence_of :name, :happiness, :height, :nausea, :tickets

end
