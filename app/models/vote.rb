class Vote < ActiveRecord::Base

  # Concerns
  include Deletable

  # Model Validation
  validates_presence_of :user_id, :character_id

  # Model Relationships
  belongs_to :user
  belongs_to :character

end
