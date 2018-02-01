class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def valid?(account)
    account.status=="open" && account.balance>0 ? true : false
  end
  
  def close_account(account)
    account.status = 
  end
  
end