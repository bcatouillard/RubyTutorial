#!/usr/bin/env ruby

class MegaGreeter
    attr_accessor :names

    # Création d'un objet
     def initialize(names = "World")
      @names = names
    end

    # Salut tout le monde
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # @names est une liste de noms : traitons les uns par uns
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    # Dire au revoir à tout le monde
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # Grouper les différents noms de la liste par des virgules
            puts "Goodbye #{@names.join(", ")}. See you soon !"
        else
            puts "Goodbye #{@names}. See you soon !"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    # Modifier le nom en Zeke
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    # Changer le nom pour un tableau 
    mg.names = ["Albert", "Brenda", "Charles"]
    mg.say_hi
    mg.say_bye

    # Maintenant le nom n'est plus
    mg.names = nil
    mg.say_hi
    mg.say_bye
end