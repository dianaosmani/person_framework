class FamilyMember < Person

  attr_accessor :relationship

  def initialize (first_name, surname, dob=nil, relationship)
    @relationship = relationship
    super(first_name, surname, dob=nil)
  end
end