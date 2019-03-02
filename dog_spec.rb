require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
	describe 'acts like a dog' do
		it 'barks' do
			dog = Dog.new
			expect(dog.bark).to eql('Woof!')
		end

		it 'fetches a ball' do
			dog = Dog.new
			2.times { dog.fetch(5) }
			expect(dog.balls).to eql(10)
		end
	end 
end