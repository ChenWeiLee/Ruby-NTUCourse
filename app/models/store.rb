class Store < ActiveRecord::Base
	belongs_to :user
	has_many :wherehouses
	has_many :products, :through => :wherehouses
end
