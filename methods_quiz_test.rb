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
end
