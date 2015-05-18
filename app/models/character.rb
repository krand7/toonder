class Character < ActiveRecord::Base
  # mount_uploader :photo, PhotoUploader

  # Concerns
  include Deletable

  # Model Validation
  validates_presence_of :slug

  # Model Relationships
  belongs_to :user
  has_many :votes

  # Class methods
  def self.load_characters

    loaded_successfully = []

    data_file = YAML.load_file(Rails.root.join(*(['lib', 'characters', 'characters.yml'])))
    data_file['characters'].each do |character_attributes|
      char = Character.where(slug: character_attributes["slug"]).first_or_create
      if char.update(character_attributes)
        loaded_successfully << character_attributes
      else
        puts "Error creating or updating: #{character_attributes}"
      end
    end

    {successful: loaded_successfully}

  end

end
