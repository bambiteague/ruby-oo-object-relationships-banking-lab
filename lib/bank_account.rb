require 'pry'

class BankAccount
  attr_accessor :status
  attr_reader :name
  @@account = []

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def balance=(balance)
    @balance = balance
  end

  def balance
    @balance
  end

  def deposit(deposit_amount)
    self.balance += deposit_amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    balance > 0 && status == "open"
  end

  def close_account
    self.status = "closed"
  end

end
