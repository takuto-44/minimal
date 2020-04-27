class ItemsController < ApplicationController

  def index
    # @items = Item.all
    @items = Item.includes(:images).order('created_at DESC')
  end
end