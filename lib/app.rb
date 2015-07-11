require 'pry'
require_relative 'app/number_to_words'

class App
  def initialize
  end

  def read
    puts 'type some digits'
    ARGF.each_line do |line|
      next  if line.strip.empty?
      break if line.strip.match(/exit|end/)
      puts line
    end
  end
end

App.new.read
