class TipCalculator
  def initialize(bill_amount, tip_percent=15)
    @bill_amount = Float(bill_amount)
    @tip_percent = Float(tip_percent)
  end

  def tip
    format_price(tip_amount)
  end

  def total_bill
    format_price(@bill_amount + tip_amount)
  end

  private

  def tip_amount
    @bill_amount * (@tip_percent / 100)
  end

  def format_price(amount)
    sprintf("%.2f", amount)
  end
end
