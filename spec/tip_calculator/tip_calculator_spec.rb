require "spec_helper"
require "tip_calculator/tip_calculator"

RSpec.describe TipCalculator do
  it "returns a tip of 0 for a 0$ bill" do
    expect(described_class.new("0").tip).to eq(0)
  end

  it "returns a total bill of 0 for a 0$ bill" do
    expect(described_class.new("0").total_bill).to eq(0)
  end
end
