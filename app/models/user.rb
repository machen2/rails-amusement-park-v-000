class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood
    if self.happiness && self.nausea
      if self.nausea > self.happiness
        "sad"
      elsif self.happiness > self.nausea
        "happy"
      end
    end
  end
end
