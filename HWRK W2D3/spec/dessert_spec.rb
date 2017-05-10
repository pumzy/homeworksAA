require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    subject(:dessert2) {Dessert.new("kitkat","hello",chef)}

    it "sets a type" do
      expect(dessert.type).to eq("kitkat")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(5000)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{dessert2.quantity}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("Chocolate")
      expect(dessert.ingredients).to eq (["Chocolate"])
    end

  end

  describe "#mix!" do
    subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    it "shuffles the ingredient array" do
      dessert.add_ingredient("Chocolate")
      dessert.add_ingredient("Bleh")
      dessert.add_ingredient("MMMMMM")
      dessert.add_ingredient("KKKKKK")
      expect(dessert.mix!).to_not eq(["Chocolate","Bleh","MMMMMM","KKKKKK"])
      expect(dessert.mix!.sort).to eq(["Bleh","Chocolate","KKKKKK","MMMMMM"])
    end


  end

  describe "#eat" do
    subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    it "subtracts an amount from the quantity" do
      dessert.eat(3000)
      expect(dessert.quantity).to eq(2000)
    end


    it "raises an error if the amount is greater than the quantity" do
    expect{dessert.eat(6000)}.to raise_error
  end

  end

  describe "#serve" do
  subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Title")
      expect(dessert.serve).to eq("Title has made 5000 kitkats!")
    end

  end

  describe "#make_more" do
    subject(:dessert) {Dessert.new("kitkat",5000,chef)}
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
end
end
