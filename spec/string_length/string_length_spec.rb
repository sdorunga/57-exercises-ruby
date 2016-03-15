require "string_length/string_length"

describe "String length" do
  it "returns the correct length for the entered strig" do
    input = StringIO.new("Horse\n")
    output = StringIO.new
    string_length(input, output)
    expect(output.string).to eq("What is the input string?\nHorse has 5 characters.\n")
  end
end
