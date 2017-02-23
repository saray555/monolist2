class RankingsController < ApplicationController
  before_action :logged_in_user
  
  def show
#    @items = current_user.items.group('items.id')
    puts "show: ああああ"
  
  end

  def have
    puts "have: ああああ"


    ranking = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    item_ids = ranking.keys
    @items = Item.find(item_ids).sort_by{|o| item_ids.index(o.id)}
  end

  def want
    puts "want: ああああ"
    ranking = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    item_ids = ranking.keys
    @items = Item.find(item_ids).sort_by{|o| item_ids.index(o.id)}
  end

end
