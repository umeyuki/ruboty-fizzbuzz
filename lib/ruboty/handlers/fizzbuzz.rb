require "ruboty/fizzbuzz/actions/fizzbuzz"

module Ruboty
  module Handlers
    class Fizzbuzz < Base
      on /fizzbuzz (?<number>.*?)\z/, name: 'fizzbuzz', description: 'output fizzbuzz result'
    end

    def fizzbuzz(message)
      Ruboty::Fizzbuzz::Actions::Fizzbuzz.new(message).call
    end
  end
end
