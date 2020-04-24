# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    email_array = @emails.split(" ")
   parsed_emails = email_array.map do |email|
      email.split(",").join
    end
    
    single_emails = []
    parsed_emails.each do |email|
      single_emails << email unless single_emails.include?(email)
    end
    single_emails
  end
  
end