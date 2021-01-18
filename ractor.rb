require 'prime'
pipe = Ractor.new do
  loop do
    Ractor.yield(Ractor.receive)
  end
end
MAX_NUMBER = 100_000
WORKER_COUNT = 10
workers = (1..WORKER_COUNT).map do
  Ractor.new(pipe) do |pipe|
    while n = pipe.take
      Ractor.yield({n => n.prime?})
    end
  end
end
(1..MAX_NUMBER).each do |i|
  pipe << i
end
results = []

require 'benchmark'

pp "RACTOR TIMINGS"
pp Benchmark.measure {
  (1..MAX_NUMBER).each do |_i|
    _ractor, (n, is_prime) = Ractor.select(*workers)
    results << n
  end
}
puts
pp "BLOCKING TIMINGS"
pp Benchmark.measure {
  (1..MAX_NUMBER).map { |i| { i => i.prime? } }
}
