class Character < ActiveRecord::Base
  # mount_uploader :photo, PhotoUploader

  # Concerns
  include Deletable

  # Model Validation
  validates_presence_of :name, :user_id, :fact1, :fact1_description, :fact2, :fact2_description, :fact3, :fact3_description

  # Model Relationships
  belongs_to :user
  has_many :votes

  # Class methods
  def self.load_characters

    loaded_successfully = []

    data_file = YAML.load_file(Rails.root.join(*(['lib', 'characters', 'characters.yml'])))
    data_file['characters'].each do |character_attributes|
      char = create(character_attributes)
      if char.save
        loaded_successfully << character_attributes
      else
        puts "Error creating: #{character_attributes}"
      end
    end

    {successful: loaded_successfully}

  end

end
