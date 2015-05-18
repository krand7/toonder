namespace :characters do
  task create: :environment do
    characters = Character.load_characters
    puts "#{characters[:successful].count} characters loaded successfully."
  end
end
