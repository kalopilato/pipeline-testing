#!/usr/bin/env ruby

require 'json'

count = ARGV[0] || 10

steps = (1..count.to_i).map { |i| { command: "echo #{i}", key: i.to_s, depends_on: (1...i).map(&:to_s) } }
steps.push(
  { command: "echo parallel $$BUILDKITE_PARALLEL_JOB", key: "parallel", depends_on: "1", parallelism: 200 }
)

puts JSON.generate(steps: steps)