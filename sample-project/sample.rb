# frozen_string_literal: true

require 'faker'
require 'awesome_print'

puts Faker::VERSION
puts Faker::Name.name

ap %w[Kimura Tanaka Satou]
