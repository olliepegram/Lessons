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

filename = 'balance.txt'
txt = open(filename, 'r+')
number = File.read(filename).to_i

john = Customer.new(name, Bank_account.new(number), email_acc, address, contact)

puts "Hello #{john.name}, this is your bank account:"
puts "=" * 40
puts "Email: #{john.email_acc}"
puts "Address: #{john.address}"
puts "Contact: #{john.contact}"
#john.account.balance > 1 ? color = :blue : color = :red

print "Balance: "
print john.account.balance
puts ""

puts "=" * 40
puts "Would you like to: "
puts "1. Withdraw"
puts "2. Disposit?"
answer = gets.chomp.to_i


if answer == 1
  withdraw = 20
  puts "Withdrawing #{withdraw} from your account"
  john.account.balance = number - withdraw
  puts "You now have #{john.account.balance} left in your account."
elsif answer == 2
  deposit = 20
  puts "Depositing #{deposit} into your account"
  john.account.balance = number + deposit
  puts "You now have #{john.account.balance} in your account."
else
  puts "Error try again."
end

txt.write(john.account.balance)
txt.rewind
txt.close
