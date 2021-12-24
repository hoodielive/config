require 'spec_helper'

module Mathematics

Rspec.describe Factorial do

  describe "#calculate" do
    it "returns correct results for positive numbers" do
      expect(Factorial.new(3).calculate).to eq 6
      expect(Factorial.new(4).calculate).to eq 24
    end

    it "returns correct result for 0" do
      expect(Factorial.new(0).calculate).to eq 1
    end
  end
end

end

