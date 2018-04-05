class BankAccount
  attr_reader :name, :balance, :status
  # status & balance writers are for test spec purposes.  Really these should probably only be updated through methods
  attr_writer :status, :balance

  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit (amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"
  end
end
