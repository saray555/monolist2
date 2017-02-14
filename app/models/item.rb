class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  ### Need to check ###
  has_many :wants, class_name: "Want_user", foreign_key: "user_id", dependent: :destroy
  has_many :want_users , through: :wants, source: :user
  has_many :haves, class_name: "Have_user", foreign_key: "user_id", dependent: :destroy
  has_many :have_users , through: :haves, source: :user
  
end
