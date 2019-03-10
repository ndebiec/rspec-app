require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
	
	describe '.bark' do
		it 'says Woof!' do
			expect(subject.bark).to eql('Woof!')
		end
	end

	describe '.fetch' do
		context 'when the balls are thrown' do
			it 'fetches all balls' do
				2.times { subject.fetch(5) }
				expect(subject.balls).to eql(10)
			end
		end
	end 

	describe '.hungry?' do
		context 'when the hunger level is lower then 5' do
			it 'returns false' do
				expect(subject).to_not be_hungry
			end
		end
		context 'when the hunger level is greater then 5' do		
			it 'returns true' do
				dog = described_class.new(hunger_level = 7)
				expect(dog).to be_hungry
			end
		end 
	end

end