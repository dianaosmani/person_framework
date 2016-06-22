require "spec_helper"

describe "Person Class" do
it "should store and return personal information"do
person = Person.new("joe", "bloggs", "1 Jan 1990")

expect(person.dob).to eq Date.new(1990,1,1)
expect(person.first_name).to eq "Joe"
expect(person.surname).to eq "Bloggs"
expect(person.fullname).to eq "Joe Bloggs"

end

it "should have an optiona date of birth" do 
  person = Person.new("joe", "bloggs")
  expect(person.dob).to be_nil
end

it "should add and store emails in an array" do 
  person = Person.new("joe", "bloggs")
  person.add_email("diana@osmani.com")
  expect(person.emails).to be_an(Array)
end

it "should add and store emails in an array" do 
  person = Person.new("joe", "bloggs")
  person.add_phone("07887878778")
  expect(person.phone_numbers).to be_an(Array)
end

it "should remove emails from an array" do 
  person = Person.new("joe", "bloggs")
  person.add_email("diana@gmail.com")
  person.remove_email(0)
  expect(person.emails).to be_empty
end

it "should remove numbers from an array" do 
  person = Person.new("joe", "bloggs")
  person.add_phone("0777777777")
  person.remove_number(0)
  expect(person.phone_numbers).to be_empty
end

it "should get the relationship from class Person" do

end
end
