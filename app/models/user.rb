class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :characters
  has_many :votes

  # Class Methods

  def voted_on_all?
    (self.votes.count == Character.current.count)
  end

end
