class Ride < ActiveRecord::Base
	validates :year, :presence => true, :length => {:maximum => 4, :minimum => 4 }
	validates :make, :presence => true 
	validates :model, :presence => true 
	validates :description, :presence => true, :length => { :minimum => 4 }
end
