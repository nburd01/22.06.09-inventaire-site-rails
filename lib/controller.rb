require_relative 'item'
require_relative 'view' 
require_relative 'controller' 
 

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
    
        case params 
            when 1
                items = Item.all
                View.all(items)
                @view.menu_choice_item
                params = gets.chomp.to_i #on attend le choix de l'utilisateur
                case params
                  when  1
                    puts 'Quel Item veux-tu voir?'
                    choice = gets.chomp.to_i

                    item_valid?(choice)

                    item = Item.find(choice)
                    @view.item_show(item)
                   

                  when  2
                    @view.home_menu
                  else
                    puts "Ce choix n'existe pas"
                    break
                  
                    end
                    #   when 2
                    #     puts "Tu as choisi de créer un item" 
                    #     @controller.create_item
                
                    #   when 3
                    #     puts "Tu as choisi de delete un item" 
                    #     @controller.delete_item
            
            when 4
                @view.aufWiedersehen
                break
    
                else
                    puts "Ce choix n'existe pas (concentration is the key to success). \n" 
                end
            end

    end

# ------------------CRUD---------------------------



    def  consult_item
        items = Item.all
        View.all(items)
    end

 
    def create
        item = Item.create(post_params)
        redirect_to_item_path(item.id)
    end

    def show
        @item = Item.find(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
    end
    
      
    def update
    @item = Item.find(params[:id])
        @item.update(post_params)
        redirect_to articles_path
    end

 
    def destroy
        item = Item.create(post_params)
        @item.destroy
        redirect_to_item_path
    end

    private 
    def item_valid?(id)
        while id < 1 || id > Item.all.length 
            puts 'Merci de faire un choix valide'
            id = gets.chomp.to_i
        end
    end

    def post_params
        post_params = params.require(:item).permit(:id,:name,:price,:quantity,:brand)
    end

end
