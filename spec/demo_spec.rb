RSpec.describe "example" do
  it "example 1" do
    fake = double :fake
    expect(fake).to be # means it exist
  end

  it "example 2" do
    fake = double :fake, greet: "Hello, world!"
    expect(fake.greet).to eq "Hello, world!"
  end

  it "example 3" do
    fake = double :fake
    allow(fake).to receive(:greet).with("Orlane").and_return("Hello, Orlane!")
    expect(fake.greet("Orlane")).to eq "Hello, Orlane!"
  end

  it "example 4" do
    fake = double :fake
    expect(fake).to receive(:greet).with("Orlane", "Rosette").and_return("Hello, Orlane!")
    expect(fake.greet("Orlane", "Rosette")).to eq "Hello, Orlane!"
  end

end