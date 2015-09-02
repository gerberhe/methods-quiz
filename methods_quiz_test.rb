require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here

	def test_has_teen
		assert_equal true,@m.has_teen?([13,12,14])
		assert_equal true,@m.has_teen?([12,13,11])
		assert_equal false,@m.has_teen?([12,9,11])
		assert_equal false,@m.has_teen?([3,9,8])
		assert_equal true,@m.has_teen?([13,9,8])
		assert_equal true,@m.has_teen?([4,9,17])
	end

	def test_not_string
		assert_equal "notbaby",@m.not_string?("baby")
		assert_equal "notdog",@m.not_string?("dog")
		assert_equal "notcat",@m.not_string?("notcat")
		assert_equal "notman",@m.not_string?("notman")
	end

	def test_icy_hot
		assert_equal true,@m.icy_hot?(-5,105)
		assert_equal true,@m.icy_hot?(-7,110)
		assert_equal false,@m.icy_hot?(7,110)
		assert_equal false,@m.icy_hot?(7,95)
		assert_equal false,@m.icy_hot?(-7,95)
		assert_equal false,@m.icy_hot?(-7,65)
	end

	def test_closer_to
		assert_equal 0,@m.closer_to?(5,7,3)
		assert_equal 0,@m.closer_to?(5,4,6)
		assert_equal 6,@m.closer_to?(5,3,6)
		assert_equal 7,@m.closer_to?(5,7,2)
		assert_equal 7,@m.closer_to?(10,7,2)
		assert_equal 12,@m.closer_to?(10,5,12)
		assert_equal 0,@m.closer_to?(10,5,15)
		assert_equal 0,@m.closer_to?(10,7,13)
	end

	def test_two_as_one
		assert_equal true,@m.two_as_one?(1,2,3)
		assert_equal true,@m.two_as_one?(1,4,5)
		assert_equal true,@m.two_as_one?(9,3,6)
		assert_equal true,@m.two_as_one?(8,15,7)
		assert_equal false,@m.two_as_one?(5,15,7)
		assert_equal false,@m.two_as_one?(3,27,9)
		assert_equal false,@m.two_as_one?(45,27,9)
		assert_equal false,@m.two_as_one?(45,27,139)
	end

	def test_pig_latinify
		assert_equal "ogday",@m.pig_latinify?("  dog")
		assert_equal "atcay",@m.pig_latinify?("cat")
		assert_equal "appleway",@m.pig_latinify?(" apple")
		assert_equal "orangeway",@m.pig_latinify?("orange")
	end
end
