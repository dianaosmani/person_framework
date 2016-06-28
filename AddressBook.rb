class AddressBook
  attr_accessor :address
  def initialize
    @address = []
  end

  def add(someone)
    if someone.is_a? Person || FamilyMember 
      @address << someone
    else
      raise ArgumentError, "Argument must be of type Person or FamilyMember"
    end
  end
end