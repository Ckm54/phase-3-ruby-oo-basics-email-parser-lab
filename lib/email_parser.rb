# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  def initialize(string)
    @string = string
  end

  def parse
    array = @string.split(/[, ]/)
    array.each do |email|
      if email == ""
        array.delete(email)
      end
    end
    # binding.pry
    array.uniq!
    return array
  end
end
