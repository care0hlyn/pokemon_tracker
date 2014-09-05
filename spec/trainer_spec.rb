require 'rails_helper'

describe Trainer do
	it { should validate_presence_of :name }
	it { should have_many :animals }
end