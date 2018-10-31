require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Eric") }
  let(:pie) {Dessert.new("pie", 50, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(pie.type).to eq("pie")
    end

    it "sets a quantity" do
      expect(pie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(pie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cookie", "a bunch", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      pie.add_ingredient("Apples")
      expect(pie.ingredients).to include("Apples")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["apple","flour","sugar"]
      ingredients.each do |item|
        pie.add_ingredient(item)
      end
      expect(pie.ingredients).to eq(ingredients)
      pie.mix!
      expect(pie.ingredients).not_to eq(ingredients)
      expect(pie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pie.eat(15)
      expect(pie.quantity).to eq(35)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(pie.eat(100)).to raise_error("not enough left!")
    end
  end

  # describe "#serve" do
  #   it "contains the titleized version of the chef's name" do
  #     allow(chef).to recieve(:titleize).and return("Chef Eric the Great Baker")
  #     expect(pie.serve).to eq("Chef Eric the Great Baker has made 100 pie!")
  #   end
  # end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(pie)
      pie.make_more
    end
  end
end
