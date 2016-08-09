require 'paint'
class Customer
  def initialize(name, account, email_acc, address, contact)
    @name = name
    @email_acc = email_acc
    @address = address
    @contact = contact
    @account = account
  end
    attr_accessor :name, :email_acc, :address, :contact, :account
end

class Bank_account
  def initialize(balance)
    @balance = balance
  end
  attr_accessor :balance

end

puts "What's your name?"
name = gets.chomp
system('clear')
puts "What's you email account"
email_acc = gets.chomp
system('clear')
puts "What's your address?"
address = gets.chomp
system('clear')
puts "What's your contact?"
contact = gets.chomp
system('clear')

john = Customer.new(name, Bank_account.new(Random.rand(-100000..100000)), email_acc, address, contact)

puts "Hello #{john.name}, this is your bank account:"
puts "=" * 40
puts "Email: #{john.email_acc}"
puts "Address: #{john.address}"
puts "Contact: #{john.contact}"
john.account.balance > 1 ? color = :blue : color = :red
original_balance = john.account.balance
expenses = Random.rand(0..90000)
after_balance = john.account.balance - expenses
puts "Original Balance: #{original_balance}"
puts "Expenses: #{expenses}"
print "Remaining Balance: "
print Paint[after_balance, color]
puts ""
