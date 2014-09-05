require 'rails_helper'

describe Master do
	it { should validate_numericality_of :animal_id }
	it { should validate_numericality_of :trainer_id }
	it { should belong_to :animal }
	it { should belong_to :trainer }
end