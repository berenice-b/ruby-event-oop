require "pry"

class User
attr_accessor :email, :name
@@all_users = []

  def initialize(email_to_save)
    @email = email_to_save
    @@all_users << self
  end       
  
  def self.all
    return @@all_users
  end

end

puts "end of file"