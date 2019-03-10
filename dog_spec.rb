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
		context 'returns true if hunger_level is more then 5' do
			it 'by default is not' do
				expect(subject).to_not be_hungry
			end
			it 'can be created hungry' do
				hungry_dog = Dog.new(hunger_level = 7)
				expect(hungry_dog).to be_hungry
			end
		end 
	end

end