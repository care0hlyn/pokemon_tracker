class Sighting < ActiveRecord::Base
	validates :region, :presence => true
	validates :animal_id, :numericality => {only_integer: true}
	validates :trainer_id, :numericality => {only_integer: true}
	
	belongs_to :animal
end