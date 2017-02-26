class RankingController < ApplicationController
  before_action :logged_in_user
  
  def show
  end

  def have
    @title = "持っているものランキング"
    
    ranking = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    item_ids = ranking.keys
    @items = Item.find(item_ids).sort_by{|o| item_ids.index(o.id)}
    #binding.pry
  end

  def want
    @title = "欲しいものランキング"

    ranking = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    item_ids = ranking.keys
    @items = Item.find(item_ids).sort_by{|o| item_ids.index(o.id)}
  end
end
