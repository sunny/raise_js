require 'test_helper'

class RaiseJs::JavascriptErrorsControllerTest < ActionController::TestCase

  test "routes" do
    assert_routing({ method: "post", path: "javascript-errors" },
                   { controller: "raise_js/javascript_errors", action: "create" })
  end

  test "create raises a JavscriptException" do
    assert_raises RaiseJs::JavascriptError do
      begin

        post :create, msg: "Error!", url: "http://example.org", line: "42"

      rescue RaiseJs::JavascriptError => e

        assert_equal "Error!", e.msg
        assert_equal "http://example.org", e.url
        assert_equal "42", e.line

        raise # raise again in order to catch it in the assertion
      end
    end

  end
end
