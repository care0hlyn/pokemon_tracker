class Animal < ActiveRecord::Base
	validates :name, :presence => true

	has_many :masters
	has_many :trainers, through: :masters
end