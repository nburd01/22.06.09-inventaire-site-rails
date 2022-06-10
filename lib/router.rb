require 'controller'


class Router

  def initialize
    @controller =  Controller.new
  end 

  def perform 
    puts "BIENVENUE DANS L'INVENTAIRE STORE"

    while true

      puts "Salut, que veux-tu faire ?"
      puts "1. Je veux consulter l'inventaire"
    #   puts "2. Je veux créer un item"
    #   puts "3. Je veux delete un item"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de consulter l'inventaire" 
        @controller.consult_item

    #   when 2
    #     puts "Tu as choisi de créer un item" 
    #     @controller.create_item

    #   when 3
    #     puts "Tu as choisi de delete un item" 
    #     @controller.delete_item

      when 4
        puts "À bientôt !"
        break

      else
        puts "Ce choix n'existe pas, merci de ressayer" 

      end
    end
  end

end