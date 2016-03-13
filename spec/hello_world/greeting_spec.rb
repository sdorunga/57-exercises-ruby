require "spec_helper"
require "hello_world/greeting"

RSpec.describe Greeting do
  it "displays the correct message" do
    expect(subject.message("Brian")).to eq("Hello, Brian, nice to meet you!")
  end

  it "remembers meeting someone" do
    subject.message("Brian")
    expect(subject.message("Brian")).to eq("Hello, Brian, nice to see you again!")
  end

  it "greets special people specially" do
    expect(subject.message("P-dawg")).to eq("What up P-dawg?")
  end
end
