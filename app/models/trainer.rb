class Trainer < ActiveRecord::Base
	validates :name, :presence => true

	has_many :masters
	has_many :animals, through: :masters
end