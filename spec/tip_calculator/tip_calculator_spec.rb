require "spec_helper"
require "tip_calculator/tip_calculator"

RSpec.describe TipCalculator do
  it "returns a tip of 0 for a 0$ bill" do
    expect(described_class.new("0").tip).to eq("0.00")
  end

  it "returns a total bill of 0 for a 0$ bill" do
    expect(described_class.new("0").total_bill).to eq("0.00")
  end

  it "returns a total of 15 when calculating the default tip for 100$" do
    expect(described_class.new("100").tip).to eql("15.00")
  end

  it "returns a total of 115 when calculating the total bill for 100$" do
    expect(described_class.new("100").total_bill).to eql("115.00")
  end

  it "returns a fractional tip amount for 10$" do
    expect(described_class.new("10").tip).to eql("1.50")
  end

  it "returns a fractional bill amount for 10$" do
    expect(described_class.new("10").total_bill).to eql("11.50")
  end

  it "returns 20 for a 100$ bill with a 20% tip rate" do
    expect(described_class.new("100", "20").tip).to eq("20.00")
  end

  it "returns a total bill of 120 for a 100$ bill with a 20% tip rate" do
    expect(described_class.new("100", "20").total_bill).to eq("120.00")
  end

  it "rounds up the tip amount for fractions of a cent" do
    expect(described_class.new("11.25").tip).to eq("1.69")
  end
end
