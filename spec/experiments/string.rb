require "spec_helper"

describe "String" do
    describe "#<<" do
      example "数の追加" do
        a = "ABC"
        a << "D"
        expect(a.size).to eq(4)
      end
    end
end