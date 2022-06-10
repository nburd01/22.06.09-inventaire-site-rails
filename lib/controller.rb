require_relative 'item'
require_relative 'view' 
 

class Controller 

    def initialize
        # @itemsList = Item.all
        @view = View.new
        # puts @itemsList.inspect
    end

# -----------------------------------------------------

    def welcome_script
        @view.start
        
        while true
            @view.home_menu
            params = gets.chomp.to_i #on attend le choix de l'utilisateur
    
            case  
              when 1
                puts "Tu as choisi de consulter l'inventaire :"
                items = Item.all
                View.all(items)
        
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

# -----------------------------------------------------



    def  consult_item
        items = Item.all
        View.all(items)
    end

 
    def  create
        # rentrer les attributs ici
    end

 
    def  delete
        # rentrer les attributs ici
    end
end
