require 'rails_helper'

describe Sighting do
	it { should validate_presence_of :region }
	it { should validate_numericality_of :animal_id }
	it { should validate_numericality_of :trainer_id }
	it { should belong_to :animal }
end