require 'test_helper'

class RequestTest < ActiveSupport::TestCase

    test "the truth" do
      assert true
      puts "request model works"
    end

    test "title null" do
      request= Request.new(title: '', :description =>'description', :category =>'one time help', :longitude =>'9.376307', :latitude => '45.495934', :status => 'Unfulfilled')
      assert_not request.save
    end

    test "description null" do
      request= Request.new(title: 'Title', :description =>'', :category =>'one time help', :longitude =>'9.376307', :latitude => '45.495934', :status => 'Unfulfilled')
      assert_not request.save
    end

    test "longitude null" do
      request = Request.new( :title =>'Title',:description =>'description', :category =>'one time help', :longitude =>'', :latitude => '45.495934', :status => 'Unfulfilled')
      assert_not request.save
    end
end
