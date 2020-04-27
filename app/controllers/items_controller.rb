class ItemsController < ApplicationController

  def index
    # @items = Item.all
    @items = Item.includes(:images).order('created_at DESC')
    # @items = Item.where(id: 1).order('created_at DESC')
    # @items = Item.find
  end
end