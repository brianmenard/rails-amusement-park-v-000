class User < ActiveRecord::Base

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness && self.nausea
      mood = self.happiness - self.nausea
      mood > 0 ? "happy" : "sad"
    end
  end

  def spend_ticket
    self.tickets -=2
    self.save
  end

end
