require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
	describe 'acts like a dog' do
		it 'barks' do
			dog = Dog.new
			expect(dog.bark).to eql('Woof!')
		end

		it 'fetches a ball' do
		end
	end 
end