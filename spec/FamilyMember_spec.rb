require 'spec_helper'

describe "FamilyMember class" do 

   it "should store and return the relationship " do 
     sarah = FamilyMember.new("sarah","brown","1 Jan 1999","Sister") 
   
     expect(sarah.relationship).to eq "Sister"
     end
 end