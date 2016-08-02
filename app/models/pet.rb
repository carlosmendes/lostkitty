class Pet < ActiveRecord::Base
	CATEGORIES = ['Dog', 'Cat', 'Elephant', 'Unicorn', 'Pokemon']
	validates :name, presence: true
	validates :category, inclusion: {in: CATEGORIES}
	
end
