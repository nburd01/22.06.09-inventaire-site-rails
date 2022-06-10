require_relative 'controller' 
require_relative 'item' 


class View


    # def self.all(all_items)
    #     all_items.each do |item|
    #       puts "#{item.id} #{item.name}"
    #     end
    # end


    def start
      puts "BIENVENUE DANS L'INVENTAIRE STORE"
    end
    

    def home_menu
      puts "Salut, que veux-tu faire ?"
      puts "1. Je veux consulter l'inventaire"
      # puts "2. Je veux créer un item (pas opérationnel)" 
      # puts "3. Je veux delete un item (pas opérationnel)" 
      puts "4. Je veux quitter l'app"
    end


    def self.all(all_items)
        all_items.each do |item|
          puts "#{item.id} #{item.name}"
        end
    end

end