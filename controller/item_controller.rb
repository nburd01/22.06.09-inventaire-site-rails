class ItemsController < ApplicationController

    def index
      @item = Item.all
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

    def create
        item = Item.create(post_params)
        redirect_to_item_path(item.id)
    end

    def destroy
        item = Item.create(post_params)
        @item.destroy
        redirect_to_item_path
    end

    private
    
    def post_params
        post_params = params.require(:item).permit(:id,:name,:price,:quantity,:brand)
    end
