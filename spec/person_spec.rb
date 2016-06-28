require "spec_helper"

describe "Person Class" do
it "should store and return personal information"do
joe = Person.new("joe", "bloggs", "1 Jan 1990")

expect(joe.dob).to eq Date.new(1990,1,1)
expect(joe.first_name).to eq "Joe"
expect(joe.surname).to eq "Bloggs" 
expect(joe.fullname).to eq "Joe Bloggs"

end

it "should have an optional date of birth" do 
  joe = Person.new("joe", "bloggs")
  expect(joe.dob).to be_nil
end 

it "should add and store emails in an array" do 
  joe = Person.new("joe", "bloggs")
  joe.add_email("joe@bloggs.com")
  expect(joe.emails).to be_an(Array)
end

it "should add and store numbers in an array" do 
  joe = Person.new("joe", "bloggs")
  joe.add_phone("0777777777")
  expect(joe.phone_numbers).to be_an(Array)
end

it "should remove emails from an array" do 
  joe = Person.new("joe", "bloggs")
  joe.add_email("joe@bloggs.com")
  joe.remove_email(0)
  expect(joe.emails).to be_empty
end

it "should remove numbers from an array" do 
  joe = Person.new("joe", "bloggs")
  joe.add_phone("0777777777")
  joe.remove_number(0)
  expect(joe.phone_numbers).to be_empty
end

it "should display the users information" do
  joe = Person.new("joe", "bloggs", "1 Jan 1990")
  joe.add_email("joe@bloggs.com")
  joe.add_phone("0777777777")
  expect(joe.describe).to eq "Joe Bloggs was born on 1990-01-01. \n Their email address is: [\"joe@bloggs.com\"]. \n Their phone number is: [\"0777777777\"]"
end

end