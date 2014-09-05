require 'rails_helper'

describe Animal do
	it { should validate_presence_of :name }
	it { should belong_to :master }
end