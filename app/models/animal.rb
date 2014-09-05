class Animal < ActiveRecord::Base
	validates :name, :presence => true

	has_one :master
	has_one :trainer, through: :master
end