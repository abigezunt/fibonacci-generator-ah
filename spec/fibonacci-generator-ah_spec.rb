require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# require 'spec_helper'
# require_relative '../lib/fib'

describe "#fibonacci" do

	it "should have a method named fibonacci" do
		expect(method(:fibonacci))
	end

	it "should have one required parameter" do
		parameters = method(:fibonacci).parameters
		expect(parameters.length).to eq 1
		expect(parameters[0].length).to eq 2
		expect(parameters[0]).to include(:req)
	end

	it "should return an array" do
		expect(fibonacci(3).class).to be Array
	end

	it "should return num digits of the fibonacci sequence" do
		expect(fibonacci(8).length).to eq 8
	end

	it "should return the fibonacci sequence" do
	  expect(fibonacci(4)).to eq [1, 1, 2, 3]
	  expect(fibonacci(9)).to eq [1, 1, 2, 3, 5, 8, 13, 21, 34]
	  expect(fibonacci(0)).to eq []
	  expect(fibonacci(1)).to eq [1]
	  expect(fibonacci(2)).to eq [1, 1]
	end


end

