require 'spec_helper'

describe "AddressBook class" do
  it "should create an address book" do 
    book = AddressBook.new
    expect(book).to be_instance_of(AddressBook)
  end

  it "should add a person" do
    book = AddressBook.new
    allan = Person.new("allan","bloggs","1 Jan 1999")
    book.add allan
    expect(book.address).to eq [allan]
  end

  it "should throw an error if add is used by someone other than a Person or FamilyMember" do
    book = AddressBook.new
    expect{book.add('hello')}.to raise_error(ArgumentError)
  end

  it "should remove emails from an array" do 
    allan = Person.new("allan", "bloggs")
    allan.add_email("allan@bloggs.com")
    allan.remove_email(0)
    expect(allan.emails).to be_empty
  end

  it "should remove numbers from an array" do 
    allan = Person.new("allan", "bloggs")
    allan.add_phone("07777777777")
    allan.remove_number(0)
    expect(allan.phone_numbers).to be_empty
  end

  it "should load from a yaml file" do 
    book = AddressBook.new
    book.loadyaml("./people.yml")
    expect(book.address.size).to eq 5 
end
end
