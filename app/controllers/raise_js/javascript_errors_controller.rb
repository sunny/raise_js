module RaiseJs
  class JavascriptErrorsController < ApplicationController
    # skip_before_filter :verify_authenticity_token

    # POST /javascript-errors
    def create
      raise RaiseJs::JavascriptError.new(params[:msg], params[:url], params[:line])
    end

  end
end
