class Pant < ActiveRecord::Base
belongs_to :user
belongs_to :products
end
