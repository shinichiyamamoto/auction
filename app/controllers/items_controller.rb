class ItemsController < ApplicationController

  def create
    @item=Item.new(item_params)
    @item.save
    redirect_to "/items/#{@item.id}"
  end

  def item_prams
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end
  def show
    @item=Item.find(params[:id])
  end
  def index
    @items=Item.all
  end
  def new
    @item=Item.new
  end
end
