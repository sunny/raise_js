require 'test_helper'

class JavascriptErrorTest < ActiveSupport::TestCase
  test "truth" do
    error = RaiseJs::JavascriptError.new("Error!", "http://example.org", 42)
    assert_kind_of Exception, error
    assert_equal error.msg, "Error!"
    assert_equal error.url, "http://example.org"
    assert_equal error.line, 42
    assert_equal error.message, "JavaScript error at http://example.org on line 42: Error!"
  end
end
