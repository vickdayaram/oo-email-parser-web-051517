# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_es = @emails.split(/[,\s']/)
    parsed_es.each do |email|
      if email == ""
        parsed_es.delete(email)
      end
    end
    parsed_es.uniq
  end
end
