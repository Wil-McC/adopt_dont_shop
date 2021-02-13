require 'rails_helper'

RSpec.describe 'the Application index page' do
  before :each do
    @shelter1 = Shelter.create!(name: "Shady Shelter", address: "123 Shady Ave", city: "Denver", state: "CO", zip: 80011)
    @shelter2 = Shelter.create!(name: "Silly Shelter", address: "123 Silly Ave", city: "Longmont", state: "CO", zip: 80012)
    @shelter3 = Shelter.create!(name: "Shell Shelter", address: "102 Shelter Dr.", city: "Commerce City", state: "CO", zip: 80022)
    @pet1 = @shelter1.pets.create!(image:"", name: "Thor", description: "dog", approximate_age: 2, sex: "male")
    @pet2 = @shelter2.pets.create!(image:"", name: "Athena", description: "cat", approximate_age: 3, sex: "female")
    @pet3 = @shelter1.pets.create!(image:"", name: "Zeus", description: "dog", approximate_age: 4, sex: "male")
    @jenn = Application.create!(name:'Jenny O', address:'455 Zim Street', city:'Valporia', state:'Illinois', zip:'74515', description:'welcoming young family looking for energetic dogs good with kids')
    @bill = Application.create!(name:'Billy B', address:'120 Anchor Ave', city:'Dreamland', state:'Michigan', zip:'85142', description:'aging widower looking for a lazy cat for quiet companionship')

    @jenn.pets << @pet1
    @jenn.pets << @pet3
    @bill.pets << @pet2
  end
  it 'should display all applications' do

  end
end
