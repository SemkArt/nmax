RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  it "test_with_stdin_from_echo" do
    expect(`echo "sfdsd2 4eopj3 drtg432 dg45 4564sdfw4"| nmax 2`).to eq("[4564, 432]\n")
  end

  it "test_with_stdin_from_file" do
    expect(`cat ./spec/test.txt| nmax 3`).to eq("[12345678, 1234567, 2500]\n")
  end
end