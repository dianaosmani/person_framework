class Person

attr_reader :dob, :first_name, :surname, :emails, :phone_numbers
  def initialize(first_name, surname, dob = nil)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @dob = Date.parse(dob) if dob
    @emails = []
    @phone_numbers = []


  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def add_email(email)
    emails << email
  end

  def add_phone(number)
    phone_numbers << number
  end

  def remove_email(email)
    @emails.delete_at(email)
  end

  def remove_number(number)
    @phone_numbers.delete_at(number)
  end
end