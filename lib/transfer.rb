class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def execute_transaction
    if self.valid?
      sender.balance -= amount
      receiver.deposit(amount)
      @status = "complete"
    else
      @status = "rejected"
    end
  end
  
  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
end