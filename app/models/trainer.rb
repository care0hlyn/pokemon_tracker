class Trainer < ActiveRecord::Base
	validates :name, :presence => true
	has_many :animals
	has_many :animals, through: :masters
end