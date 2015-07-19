require 'test_helper'

class RailsJqueryCropperTest < ActiveSupport::TestCase
  test 'valid module with a version' do
    assert_kind_of Module, RailsJqueryCropper
    assert_not_nil RailsJqueryCropper::VERSION
  end
end
