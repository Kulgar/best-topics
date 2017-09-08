require "highline/import"
namespace :generate_data do 

  task :hello do 
    puts "Bonjour"
  end

  task :how => :hello do 
    puts "Comment allez-vous ?"
  end

  desc "Création de sujets de discussion"
  task :topics => :environment do 
    puts Faker::Name.name 
    puts Topic.first
    how_many = ask("Combien dois-je en générer ? > ").to_i

    how_many.times do |i|
      Topic.create(title: Faker::GameOfThrones.character, content: Faker::Lorem.paragraph )
    end
  end

end
