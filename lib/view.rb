require_relative 'controller' 
require_relative 'item' 


class View


    # def self.all(all_items)
    #     all_items.each do |item|
    #       puts "#{item.id} #{item.name}"
    #     end
    # end


    def start
      puts "***** BIENVENUE DANS L'INVENTAIRE STORE *****\n"
    end
    

    def home_menu
      puts "\n Que souhaites-tu faire ?"
      puts "1. Je veux consulter l'inventaire \n"
      # puts "2. Je veux créer un item (pas opérationnel)" 
      # puts "3. Je veux delete un item (pas opérationnel)" 
      puts "4. Je veux quitter l'app"
    end


    def self.all(all_items)
      puts "\n Tu as choisi de consulter l'inventaire :"
        all_items.each do |item|
          puts "#{item.id} #{item.name}"
        end
    end


    def self.all(all_items)
      puts "\n Voici l'item choisi :"
        all_items.each do |item|
          puts "#{item.id} #{item.name} #{item.price} #{item.quantity} #{item.brand}"
        end
    end

    def menu_choice
      puts "\n Que souhaites-tu faire ?"
      puts "1. Rester sur cette page d'item"
      puts "2. Revenir sur la page d'accueil"
    end

    def menu_choice_item
      puts "\n Que souhaites-tu faire ?"
      puts "1. Accéder à un item"             
      puts "2. Revenir sur la page d'accueil"
    end

    def aufWiedersehen
      puts "\n À bientôt !"
    end

    def item_show(item)
      puts "\n Voici l'item choisi :"
      puts "#{item.id} #{item.name} #{item.price} #{item.quantity} #{item.brand}"

    end

end