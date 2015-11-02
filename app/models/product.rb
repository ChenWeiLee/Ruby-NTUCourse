class Product < ActiveRecord::Base
   has_many :wherehouses
   has_many :stores, :through => :wherehouses
   # has_and_belongs_to_many :stores
   # has_and_belongs_to_many :stores, :join_table => "wherehouses"

   scope :available, -> {where(id:1)} #新增自有的方法,只需要呼叫Product.available即可呼叫id=1的物件
   scope :price_over, ->(p) {where(["price > ?",p])}

   validates :title, presence: true, length:{minimum:3} #判斷新增得product title是否為nil ！如果是就不寫入資料庫
end
