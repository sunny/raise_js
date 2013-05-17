module RaiseJs
  class JavascriptError < ::StandardError

    attr_reader :msg, :url, :line

    def initialize(msg, url, line)
      @msg = msg
      @url = url
      @line = line
      super "JavaScript error at #{url} on line #{line}: #{msg}"
    end

  end
end
