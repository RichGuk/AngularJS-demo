$:.unshift '.'
require 'active_record'
require 'models'

number = ARGV.first.to_i

unless number > 0
    abort "The first argument should be a positive number"
end

names = %w(Tom Alice Mike Bob Rich Sarah Alex Ed Andy Jane Matt Roy Sandra Pete Ben Laura)
ages = (1..60).to_a

1.upto(number) do
  People.create(name: names.sample, age: ages.sample)
end
