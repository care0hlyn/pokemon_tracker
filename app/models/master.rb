class Master < ActiveRecord::Base
	validates :animal_id, :numericality => true
	validates :trainer_id, :numericality => true

	belongs_to :animal
	belongs_to :trainer
end